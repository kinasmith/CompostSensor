#include <RFM69.h>
#include <SPI.h>
#include <jeelib-sleepy.h>

#define NODEID      11
#define NETWORKID   100
#define GATEWAYID   1
#define FREQUENCY   RF69_433MHZ //Match this with the version of your Moteino! (others: RF69_433MHZ, RF69_868MHZ)
#define KEY         "thisIsEncryptKey" //has to be same 16 characters/bytes on all nodes, not more not less!
#define LED         9
#define SERIAL_BAUD 9600
#define ACK_TIME    50  // # of ms to wait for an ack
#define NB_ATTEMPTS_ACK 5 //number of attempts to try before giving up

/****************************  STATIC VALUES FOR TEMPTERATURE INPUT AND CALCULATION  ****************************/
#define THERM_PIN A1   // The analoginput Pin for the Thermistor   
#define THERMISTORNOMINAL 10000      // Thermistor nominal resistance at 25 degrees C
#define TEMPERATURENOMINAL 25   // temp. for nominal resistance
#define NUMSAMPLES 5// how many samples to take and average (to smooth analog read values), more takes longer
#define BCOEFFICIENT 3950// The beta coefficient of the thermistor (usually 3000-4000)
#define SERIESRESISTOR 10000    // the value of the 'other' resistor
#define THERM_ENABLE 4 //therm read enable

#define V_BAT_PIN A4

//Variables for Battery Voltage
unsigned long bat_reporting;
unsigned long bat_last_reporting;
unsigned long while_bat_reporting;
boolean read_state = 0;

int thermVal = 0;

int TRANSMITPERIOD = 60000; //transmit a packet to gateway so often (in ms) (one minute)
int TRANSMITPERIOD_MINUTES = 10; //10 minute total
int ACK_FAIL_WAIT_PERIOD = 30000; //30 seconds
float batteryVoltage;
boolean requestACK = true;
int numOfSends = 0;
RFM69 radio;

ISR(WDT_vect) { Sleepy::watchdogEvent(); } //set watchdog for Sleepy

typedef struct {    
    int nodeId; //store this nodeId
    unsigned long uptime; //uptime in ms
    float temp;
    float humidity;
    float voltage;
} Payload;
Payload payload;

void setup() {
    radio.initialize(FREQUENCY,NODEID,NETWORKID);
    radio.setHighPower(); //uncomment only for RFM69HW!
    radio.encrypt(KEY);
    radio.sleep();
    pinMode(THERM_ENABLE, OUTPUT);
    digitalWrite(THERM_ENABLE, LOW);
}

long lastPeriod = -1;

void loop() {
    int nAttempt = 0; //number of sends attempted
    bool flag_ACK_received = false; //is the acknowledgement recieved?
    float t = toF(getTemp(5)); //Get temp with 5 averaging AND Convert to Farenheit... 
    payload.nodeId = NODEID;
    payload.uptime = numOfSends;
    payload.temp = t;
    payload.humidity = 0.0; //Not sensing Humidity. Need a value for compatibilty with reciever and other sensors
    payload.voltage = checkBatteryVoltage();
    while(nAttempt < NB_ATTEMPTS_ACK && !flag_ACK_received) { //resend package if it doesn't go through
        if (radio.sendWithRetry(GATEWAYID, (const void*)(&payload), sizeof(payload))){
            flag_ACK_received = true;
            Blink(LED, 100); //blink once for successful SEND
            numOfSends++;
        } else {
          radio.sendWithRetry(GATEWAYID, (const void*)(&payload), sizeof(payload));
          //Blink twice for Failed Send
          Blink(LED, 100);
          delay(100);
          Blink(LED, 100);
          delay(100);
          nAttempt++;
          Sleepy::loseSomeTime(ACK_FAIL_WAIT_PERIOD); //wait 30 seconds
        }
    }
    delay(100); //Let everything Finish before Sleeping
    radio.sleep(); //Sleep the Radio
    for(int i = 0; i < TRANSMITPERIOD_MINUTES; i++) { //Sleep the µC 
        Sleepy::loseSomeTime(TRANSMITPERIOD);
    }
}

int getTherm() {
  //gets Thermistor Value for future Math operations.
  while_bat_reporting = millis(); //get current time
  digitalWrite(THERM_ENABLE, HIGH); //set enable pin high (closes automatically within 20ms)
  while(millis() < while_bat_reporting + 1000) { //read the value for 1 second
    thermVal = analogRead(THERM_PIN); //read the value
    if(thermVal > 5) { //if the value goes HIGH the MOSFET has responded
      return thermVal; //return the Value and
      break; //break out of the loop
    }
    bat_reporting = millis(); //set last time to current time
    //Forgot what this is for. Might be orphaned and uneeded?
    if(bat_reporting >= bat_last_reporting+500 && read_state == 0) {
      digitalWrite(THERM_ENABLE, HIGH);
      read_state = 1; 
      bat_last_reporting = bat_reporting; 
    }
      if(bat_reporting >= bat_last_reporting+250 && read_state == 1) { 
      digitalWrite(THERM_ENABLE, LOW);  
      read_state = 0;
      bat_last_reporting = bat_reporting; 
    }
  }
}

float getTemp(int n_samples) {
  //do Thermistor readings and caclulations to turn resistance into temperature
  //this code was taken from the Adafruit tutorial:
  //https://learn.adafruit.com/thermistor/using-a-thermistor

  int samples[NUMSAMPLES];
  float result;
  float steinhart;
  // take N samples in a row, with a slight delay
  for (int i=0; i< n_samples; i++) {
    samples[i] = (abs(getTherm() - 1023));
    delay(10);
  }
  // average all the samples out
  result = 0;
  for (int i=0; i< NUMSAMPLES; i++) {
    result += samples[i];
  }
  result /= n_samples;
  result = 1023 / result - 1;
  result = SERIESRESISTOR / result;
  steinhart = result / THERMISTORNOMINAL;     // (R/Ro)
  steinhart = log(steinhart);                  // ln(R/Ro)
  steinhart /= BCOEFFICIENT;                   // 1/B * ln(R/Ro)
  steinhart += 1.0 / (TEMPERATURENOMINAL + 273.15); // + (1/To)
  steinhart = 1.0 / steinhart;                 // Invert
  steinhart -= 273.15;                         // convert to C
  return steinhart;
}

float toF(float temp) { //convert to F
  return temp * 9/5 + 32;
}

void Blink(byte PIN, int DELAY_MS) { //blink and LED
  pinMode(PIN, OUTPUT);
  digitalWrite(PIN,LOW);
  delay(DELAY_MS);
  digitalWrite(PIN,HIGH);
}

float checkBatteryVoltage() { //Check Battery Voltage
    int v = 0;
    for (int i = 0; i < 10; i++) {
        v += analogRead(V_BAT_PIN);
        delay(10);
    }
    //convert analog reading into actual voltage
    v = v/10; 
    batteryVoltage = (3.3 * v/1024.0); //this should be v/1023? 10 bit, 1024 values, 0-1023
    return batteryVoltage; //return value
}
