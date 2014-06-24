#include <JeeLib.h>

//define temp sensing items
#define thermistorPin 0 //analog input pin
#define thermistorNominal 10000 //nominal resistance of the Thermistor
#define tempNominal 25 //nominal temperature of the Thermistor
#define bCoefficient 3950 //bCoefficient of the Thermistor
#define seriesResistor 10000 //resistance of the Resistor in analog reading circuit

#define numSamples 5 //numbers of samples for smoothing readings
int samples[numSamples]; //array for smoothing values

//Values for acknowledging sample recieval by logging node
#define RADIO_SYNC_MODE 2 //Sync mode -- look at jeelib spec
#define ACK_TIME 50 //time delay between repeated sends if send fails to be recieved
#define NB_ATTEMPTS_ACK 20 //number of attempts to try before giving up

//watchdog event for deep sleep -- look at jeelib spec
ISR(WDT_vect) { 
  Sleepy::watchdogEvent(); 
}

int sleepTime = 5; //sleep time in minutes

// RF12B constants:
const byte network  = 100;   // network group (can be in the range 1-255)
const byte myNodeID = 1;     // unique node ID of receiver (1 through 30) (each node has to be unique)
const byte freq = RF12_433MHZ; // Freq of module (it has to match the hardware

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
  
  for(int i = 0; i < sleepTime; i++) {
    Sleepy::loseSomeTime(60000); //put unit into deep sleep
  }
}

//--------------------------------------------------------------------------------------------------
// Gets the temperature from the thermistor using the Steinhart-Hart equation: 
// https://en.wikipedia.org/wiki/Steinhart–Hart_equation
// Initial read values are averaged to reduce the amount of inante jitter in the sensor/ADC
//--------------------------------------------------------------------------------------------------

float readTemp() { 
  int i; //iteration counter
  float average ; //variable for storing our averaged value

//Sample size for the averaging is set at the top of the code
  for(i = 0; i < numSamples; i++) { //run that number of times
    samples[i] = analogRead(thermistorPin); //reads in thermistor value and sets the array value at the index of our read #
    delay(10); //delay for 10ms so we don't over-run our input
  }

  average = 0; //resets the averate value to 
  
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

















