#include <RFM69.h>
#include <SPI.h>
#include <jeelib-sleepy.h>
#include "DHT.h"


#define NODEID      12
#define NETWORKID   100
#define GATEWAYID   1
#define FREQUENCY   RF69_433MHZ //Match this with the version of your Moteino! (others: RF69_433MHZ, RF69_868MHZ)
#define KEY         "thisIsEncryptKey" //has to be same 16 characters/bytes on all nodes, not more not less!
#define LED         9
#define SERIAL_BAUD 9600
#define ACK_TIME    50  // # of ms to wait for an ack
#define NB_ATTEMPTS_ACK 5 //number of attempts to try before giving up

/****************************  STATIC VALUES FOR TEMPTERATURE INPUT AND CALCULATION  ****************************/

#define DHTPIN 7     // what pin we're connected to
#define DHTTYPE DHT22   // DHT 22  (AM2302)

DHT dht(DHTPIN, DHTTYPE);

int TRANSMITPERIOD = 5000; //transmit a packet to gateway so often (in ms) (one minute)
int TRANSMITPERIOD_MINUTES = 1; //10 minute total
int ACK_FAIL_WAIT_PERIOD = 500; //30 seconds
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
  Serial.begin(9600);
    dht.begin();
    radio.initialize(FREQUENCY,NODEID,NETWORKID);
    radio.setHighPower(); //uncomment only for RFM69HW!
    radio.encrypt(KEY);
    radio.sleep();
    Serial.println("Setup DONE");
}

long lastPeriod = -1;

void loop() {
    int nAttempt = 0; //number of sends attempted
    bool flag_ACK_received = false; //is the acknowledgement recieved?
    float t = dht.readTemperature(true); //Get temp with 5 averaging AND Convert to Farenheit... 
    payload.nodeId = NODEID;
    payload.uptime = numOfSends;
    payload.temp = t;
    payload.humidity = dht.readHumidity(); 
    payload.voltage = 0.0;
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

void Blink(byte PIN, int DELAY_MS) { //blink and LED
  pinMode(PIN, OUTPUT);
  digitalWrite(PIN,HIGH);
  delay(DELAY_MS);
  digitalWrite(PIN,LOW);
}
