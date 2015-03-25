#include <RFM69.h>
#include <SPI.h>
#include <Ports.h>
#include <Wire.h>
#include <SHT2x.h>

#define NODEID      10
#define NETWORKID   100
#define GATEWAYID   1
#define FREQUENCY   RF69_433MHZ //Match this with the version of your Moteino! (others: RF69_433MHZ, RF69_868MHZ)
#define KEY         "thisIsEncryptKey" //has to be same 16 characters/bytes on all nodes, not more not less!
#define LED         9
#define SERIAL_BAUD 9600
#define ACK_TIME    50  // # of ms to wait for an ack
#define NB_ATTEMPTS_ACK 5 //number of attempts to try before giving up

int TRANSMITPERIOD = 2000; //transmit a packet to gateway so often (in ms) (one minute)
byte sendSize=0;
boolean requestACK = true;
RFM69 radio;
int uptime = 0;

ISR(WDT_vect) { Sleepy::watchdogEvent(); }

typedef struct {		
    int              nodeId; //store this nodeId
    unsigned long    uptime; //uptime in ms
} Payload;
Payload payload;

void setup() {
    Serial.begin(SERIAL_BAUD);
    radio.initialize(FREQUENCY,NODEID,NETWORKID);
    radio.setHighPower(); //uncomment only for RFM69HW!
    radio.encrypt(KEY);
    radio.sleep();
    char buff[50];
    sprintf(buff, "\nTransmitting at %d Mhz...", FREQUENCY==RF69_433MHZ ? 433 : FREQUENCY==RF69_868MHZ ? 868 : 915);
    Serial.println(buff);
}

long lastPeriod = -1;

void loop() {
    int nAttempt = 0; //number of sends attempted
    bool flag_ACK_received = false; //is the acknowledgement recieved?
    payload.nodeId = NODEID;
    payload.uptime = uptime;
    while(nAttempt < NB_ATTEMPTS_ACK && !flag_ACK_received) { //resend package if it doesn't go through
        if (radio.sendWithRetry(GATEWAYID, (const void*)(&payload), sizeof(payload))){
            flag_ACK_received = true;
            Blink(LED, 100);
            uptime++;
        } else {
            radio.sendWithRetry(GATEWAYID, (const void*)(&payload), sizeof(payload));
            Blink(LED, 100);
            delay(100);
            Blink(LED, 100);
            delay(100);
            nAttempt++;
            Sleepy::loseSomeTime(5000);
        }
    }
    Blink(LED,3);
    delay(100);
    radio.sleep();
    Sleepy::loseSomeTime(TRANSMITPERIOD);
}

void Blink(byte PIN, int DELAY_MS) {
  pinMode(PIN, OUTPUT);
  digitalWrite(PIN,HIGH);
  delay(DELAY_MS);
  digitalWrite(PIN,LOW);
}


