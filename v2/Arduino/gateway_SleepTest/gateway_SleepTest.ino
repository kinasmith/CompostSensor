#include <LiquidTWI.h>
#include <Wire.h>
#include <RFM69.h>
#include <SPI.h>
#include <SoftwareSerial.h>
#include <LowPower.h>
#include <jeelib-sleepy.h>


#define NODEID      1
#define NETWORKID   100
#define FREQUENCY   RF69_433MHZ //Match this with the version of your Moteino! (others: RF69_433MHZ, RF69_868MHZ)
#define KEY         "thisIsEncryptKey" //has to be same 16 characters/bytes on all nodes, not more not less!
#define LED         9
#define SERIAL_BAUD 9600
#define ACK_TIME    30  // # of ms to wait for an ack

ISR(WDT_vect) { Sleepy::watchdogEvent(); }

RFM69 radio;
byte ackCount=0;
const bool promiscuousMode = false; //set to 'true' to sniff all packets on the same network
typedef struct {		
    int              nodeId; //store this nodeId
    unsigned long    uptime; //uptime in ms
} Payload;
Payload theData;

void setup() {
	Serial.begin(9600);
	radio.initialize(FREQUENCY,NODEID,NETWORKID);
	radio.setHighPower(); //uncomment only for RFM69HW!
	radio.encrypt(KEY);
	Serial.println("Setup Done");
}

void loop() {
  if (radio.receiveDone()) {
    Serial.println("Radio Recieve");
    if(radio.DATALEN != sizeof(Payload)) Serial.print("Invalid payload received, not matching Payload struct!");
    else {
      theData = *(Payload*)radio.DATA; //assume radio.DATA actually contains our struct and not something else
      int sensorNumber = theData.nodeId - 10;
      Serial.println(theData.nodeId);
      Serial.println(theData.uptime);
    }
    if (radio.ACKRequested()) ACKsend();
    Blink(LED,3);
    Serial.println(millis());
  }
  radio.receiveDone();
  delay(50);
  Sleepy::powerDown();
  //Sleepy::loseSomeTime(60000);
}

void ACKsend(){
  radio.sendACK();
  if (ackCount++%3==0) delay(3); 
}

void Blink(byte PIN, int DELAY_MS) {
  pinMode(PIN, OUTPUT);
  digitalWrite(PIN,HIGH);
  delay(DELAY_MS);
  digitalWrite(PIN,LOW);
}