#include <RFM69.h>
#include <SPI.h>

#define NODEID      13
#define NETWORKID   100
#define GATEWAYID   1
#define FREQUENCY   RF69_433MHZ //Match this with the version of your Moteino! (others: RF69_433MHZ, RF69_868MHZ)
#define KEY         "thisIsEncryptKey" //has to be same 16 characters/bytes on all nodes, not more not less!
#define LED         9
#define SERIAL_BAUD 9600
#define ACK_TIME    50  // # of ms to wait for an ack
#define NB_ATTEMPTS_ACK 5 //number of attempts to try before giving up

int ACK_FAIL_WAIT_PERIOD = 500; //30 seconds
boolean requestACK = true;
int numOfSends = 0;
RFM69 radio;

//KNOCK SENSOR
const int knockSensor = 0;
const int threshold = 100;  
int sensorReading = 0;      

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
  pinMode(LED, OUTPUT); // declare the ledPin as as OUTPUT
}

long lastPeriod = -1;

void loop() {
    payload.nodeId = NODEID;
    payload.uptime = numOfSends;
    payload.temp = numOfSends;
    payload.humidity = 0.0; 
    payload.voltage = 0.0;
  sensorReading = analogRead(knockSensor);    
  if (sensorReading >= threshold) {
    sendPacket();
  }
}

void sendPacket() {
  int nAttempt = 0; //number of sends attempted
    bool flag_ACK_received = false; //is the acknowledgement recieved?
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
          delay(ACK_FAIL_WAIT_PERIOD);
        }
    }
}

void Blink(byte PIN, int DELAY_MS) { //blink and LED
  pinMode(PIN, OUTPUT);
  digitalWrite(PIN,HIGH);
  delay(DELAY_MS);
  digitalWrite(PIN,LOW);
}