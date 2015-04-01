#include <LiquidTWI.h>
#include <Wire.h>
#include <RFM69.h>
#include <SPI.h>
#include <SoftwareSerial.h>
#include <Bounce2.h>


#define NODEID      1
#define NETWORKID   100
#define FREQUENCY   RF69_433MHZ //Match this with the version of your Moteino! (others: RF69_433MHZ, RF69_868MHZ)
#define KEY         "thisIsEncryptKey" //has to be same 16 characters/bytes on all nodes, not more not less!
#define LED         9
#define SERIAL_BAUD 9600
#define ACK_TIME    30  // # of ms to wait for an ack

RFM69 radio;

byte ackCount=0;
const bool promiscuousMode = false; //set to 'true' to sniff all packets on the same network
typedef struct {		
  int nodeId; //store this nodeId
  unsigned long uptime; //uptime in ms
  float temp;
  float humidity;
  float voltage;
} Payload;
Payload theData;

void setup() {
	Serial.begin(9600);
	radio.initialize(FREQUENCY,NODEID,NETWORKID);
	radio.setHighPower(); //uncomment only for RFM69HW!
	radio.encrypt(KEY);
	char buff[50];
	sprintf(buff, "\nTransmitting at %d Mhz...", FREQUENCY==RF69_433MHZ ? 433 : FREQUENCY==RF69_868MHZ ? 868 : 915);
	Serial.println(buff);
}

void loop() {
	if (radio.receiveDone()) {
		radioReceive();
		if (radio.ACKRequested()) {
			ACKsend();
		}
	}
}

void radioReceive() {
	if(radio.DATALEN != sizeof(Payload)) {
		Serial.print("Invalid payload received, not matching Payload struct!");
	}
	else {
		theData = *(Payload*)radio.DATA; //assume radio.DATA actually contains our struct and not something else

		Serial.print(theData.nodeId); Serial.print(", ");
		Serial.print(theData.temp); Serial.print(", ");
		Serial.print(theData.humidity); Serial.print(", ");
		Serial.print(theData.voltage); Serial.print(", ");
		Serial.print(radio.readRSSI()); 
		Serial.println();
	}
}
void ACKsend(){
	//  byte theNodeID = radio.SENDERID;
	radio.sendACK();
	//Serial.print(" - ACK sent.");
	// When a node requests an ACK, respond to the ACK
	// and also send a packet requesting an ACK (every 3rd one only)
	// This way both TX/RX NODE functions are tested on 1 end at the GATEWAY
	if (ackCount++%3==0) {
		//   Serial.print(" Pinging node ");
		//Serial.print(theNodeID);
		//Serial.print(" - ACK...");
		delay(3); //need this when sending right after reception .. ?
		//    if (radio.sendWithRetry(theNodeID, "ACK TEST", 8, 0))  // 0 = only 1 attempt, no retries
		// Serial.print("ok!");
		// else Serial.print("nothing");
	}
}