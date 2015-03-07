/*----------------------------------------------------------------------------------------------
Compost Sensor 

--Sender Node for a normal Arduino and a HopeRF RFM12B radio module
(tested with Uno)

Written by Kina Smith - 06/2014
kina@kinasmith.com
www.kinasmith.com

TODO:
-check to see if sleeping is actually working. drawing more power than it should
----------------------------------------------------------------------------------------------*/

#include <JeeLib.h>

//define temp sensing items
//analog input pin
#define thermistorPin A0 
// resistance of the Thermistor at 25deg C
#define thermistorNominal 10000 
//nominal temperature of the Thermistor (almos always 25degC)
#define tempNominal 25 
//bCoefficient of the Thermistor (check the datasheet)
#define bCoefficient 3950
//resistance of the 'other' Resistor in the voltage divider circuit
#define seriesResistor 10000
//number of samples for averaging the readings
#define numSamples 5
//array for averaging values
int samples[numSamples]; 

//Values for acknowledging sample recieval by logging node
#define RADIO_SYNC_MODE 2 //Sync mode -- look at jeelib spec
#define ACK_TIME 50 //time delay between repeated sends if send fails to be recieved
#define NB_ATTEMPTS_ACK 20 //number of attempts to try before giving up

//watchdog event for deep sleep -- look at jeelib spec
ISR(WDT_vect) { 
  Sleepy::watchdogEvent(); 
}
//sleep time in minutes
int sleepTime = 5; //           <----THIS IS THE SEND INTERVAL IN MINUTES. USE ONLY POSITIVE INTEGERS.

// RF12B constants:
// network group (can be in the range 1-255)
const byte network  = 100; //  <------SENDERS AND RECIEVERS MUST BE ON SAME NETWORK
// unique node ID of receiver (1 through 14)
const byte myNodeID = 1; //   <-------CHANGE THIS TO A DIFFERENT VALUE FOR EACH NODE
// Freq of module (it has to match the hardware)
const byte freq = RF12_433MHZ; 

//do the acknowledgement thing 
static byte waitForAck() {
  MilliTimer ackTimer;
  while(!ackTimer.poll(ACK_TIME)) {
    if(rf12_recvDone() && rf12_crc == 0 && ((rf12_hdr & RF12_HDR_ACK) == 0) && ((rf12_hdr & RF12_HDR_CTL) == 128)) {
      return 1;
    }
  }
  return 0;
}

//intitialize the rf12
void setup() {
  rf12_initialize(myNodeID, freq, network);   // Initialize RFM12  
  rf12_sleep(0); //put it to sleep 
}

//this is our data packet. We're sending the nodeID and the analogRead Value.
typedef struct {  // Message data Structure, this must match Tx
  float value;  // floating point measurement value
  int ID; //node ID
} 
Payload;
Payload sample;  // declare an instance of type Payload named sample (this is referenced as sample from now on)


void loop() {
  int nAttempt = 0; //number of sends attempted
  bool flag_ACK_received = false; //is the acknowledgement recieved?

  //while number of attempts is less than our previously set limit AND ackowledgement recieved is NOT true
  while(nAttempt < NB_ATTEMPTS_ACK && !flag_ACK_received) { 
    sample.value = readTemp(); //our sample value inside the data packet is equal to our temp reading (see the readTemp function)
    sample.ID = myNodeID; //our ID value in the data packet is equal to the node ID.

    rf12_sleep(-1); //wake up rf12

    while (!rf12_canSend())  // is the driver ready to send?
      rf12_recvDone();       // no, so service the driver

    rf12_sendStart(RF12_HDR_ACK, &sample, sizeof sample); //send data packet AND ask for an ACK (acknowlegement)
    rf12_sendWait(2); //wait for it to finish sending
    rf12_sleep(0); //then go back to sleep

    //check the ACK function, if true, then go on.
    if(waitForAck()) {
      flag_ACK_received = true;
    }
    nAttempt++;
  }
//cannot be in deep sleep for longer than 65535ms, so we put it in a for loop to repeat every minute
  for(int i = 0; i < sleepTime; i++) {
    Sleepy::loseSomeTime(60000); //put unit into deep sleep for 1 minute
  }
}

//--------------------------------------------------------------------------------------------------
// Gets the temperature from the thermistor using the Steinhart-Hart equation: 
// https://en.wikipedia.org/wiki/Steinhart–Hart_equation
// Initial read values are averaged to reduce the amount of inante jitter in the sensor/ADC
// I used the Adafruit tutorial for the code:
// https://learn.adafruit.com/thermistor/using-a-thermistor
//--------------------------------------------------------------------------------------------------

float readTemp() { 
  uint8_t i; //iteration counter
  float average = 0; //variable for storing our averaged value

  //Sample size for the averaging is set at the top of the code
  for(i = 0; i < numSamples; i++) { //run that number of times
    samples[i] = analogRead(thermistorPin); //reads in thermistor value and sets the array value at the index of our read #
    delay(10); //delay for 10ms so we don't over-run our input
  }

  //cycle through array of stored values and add them all together into average variable
  for(i = 0; i < numSamples; i++){ 
    average += samples[i]; //add each index of samples[] to average
  }

  average /= numSamples; //devide the sum of all samples by the number of samples (creating an average of the values, YAY!)

  //convert analog value to a resistance value
  average = 1023 / average - 1; 
  average = seriesResistor / average; 

  //convert to Kelvin
  float steinhart;
  steinhart = average / thermistorNominal;   // (R/Ro)
  steinhart = log(steinhart);                // ln(R/Ro)
  steinhart /= bCoefficient;                 // 1/B * ln(R/Ro)
  steinhart += 1.0 / (tempNominal + 273.15); // + (1/To)
  steinhart = 1.0 / steinhart;               // Invert
  //conver to C
  steinhart -= 273.15;
  //convert to F
  steinhart *= 1.8;
  steinhart += 32.0;

  return steinhart;
}
