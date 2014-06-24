#include <JeeLib.h>

//define temp sensing items
#define thermistorPin A0 //analog input pin
#define thermistorNominal 10000 
#define tempNominal 25
#define numSamples 5
#define bCoefficient 3950
#define seriesResistor 10000
int samples[numSamples];


//define ACK items
#define RADIO_SYNC_MODE 2
#define ACK_TIME 50
#define NB_ATTEMPTS_ACK 20

ISR(WDT_vect) { 
  Sleepy::watchdogEvent(); 
}

// RF12B constants:
const byte network  = 100;   // network group (can be in the range 1-255)
const byte myNodeID = 2;     // unique node ID of receiver (1 through 30)

int count = 0;

// Frequency of RF12B can be RF12_433MHZ, RF12_868MHZ or RF12_915MHZ.
const byte freq = RF12_433MHZ; // Match freq to module

static byte waitForAck() {
  MilliTimer ackTimer;
  while(!ackTimer.poll(ACK_TIME)) {
    if(rf12_recvDone() && rf12_crc == 0 && ((rf12_hdr & RF12_HDR_ACK) == 0) && ((rf12_hdr & RF12_HDR_CTL) == 128)) {
      //Serial.println("ACK Recieved");
      //Serial.print("node ID: ");
      //Serial.println(rf12_hdr & RF12_HDR_MASK);
      count++;
      return 1;
    }
  }
  return 0;
}


void setup() {
 // Serial.begin(57600);
  rf12_initialize(myNodeID, freq, network);   // Initialize RFM12  
  rf12_sleep(0);
 // Serial.println("\nInit Radio : 1200 bauds");
}

typedef struct {  // Message data Structure, this must match Tx
  // int pin;  // pin number used for this measurement          
  float value;  // floating point measurement value
  int ID;
} 
Payload;

Payload sample;  // declare an instance of type Payload named sample

void loop() {
  int nAttempt = 0;
  bool flag_ACK_received = false;

  while(nAttempt < NB_ATTEMPTS_ACK && !flag_ACK_received) {

    //sample.value = readTemp();
    sample.value = count;
    sample.ID = myNodeID;

    rf12_sleep(-1);

    while (!rf12_canSend())  // is the driver ready to send?
      rf12_recvDone();       // no, so service the driver

    rf12_sendStart(RF12_HDR_ACK, &sample, sizeof sample);
    rf12_sendWait(2);
    rf12_sleep(0);

    if(waitForAck()) {
    //  Serial.print("Attempts: ");
    //  Serial.println(nAttempt);
      flag_ACK_received = true;
    }

    nAttempt++;
  }
  Serial.flush();
  Sleepy::loseSomeTime(5000);
}

//--------------------------------------------------------------------------------------------------
// read temp sensor and convert to F
//--------------------------------------------------------------------------------------------------
float readTemp() {
  uint8_t i;
  float average;

  for(i = 0; i < numSamples; i++) {
    samples[i] = analogRead(thermistorPin);
    delay(10);
  }
  average = 0;
  for(i=0; i < numSamples; i++){
    average += samples[i];
  }
  average /= numSamples;

  average = 1023 / average - 1;
  average = seriesResistor / average;

  float steinhart;
  steinhart = average / thermistorNominal;
  steinhart = log(steinhart);
  steinhart /= bCoefficient;
  steinhart += 1.0 / (tempNominal + 273.15);
  steinhart = 1.0 / steinhart;
  steinhart -= 273.15;

  steinhart *= 1.8;
  steinhart += 32.0;

  return steinhart;
}












