#include <JeeLib.h>

#include <Wire.h>
#include "RTClib.h"
//#include <SPI.h>
#include <SD.h>
#include <LiquidTWI.h>

//create LCD
LiquidTWI lcd(0);

// create RealTimeClock (DS3231)
RTC_DS1307 rtc;

//setup SD Card
const int chipSelect = 8; //8 for my modified sheild
File logFile; //file we're writing to on SD

// RF12B constants:
const byte network  = 100;   // network group (can be in the range 1-255)
const byte myNodeID = 15;     // unique node ID of receiver (1 through 30)
const byte freq = RF12_433MHZ; // Hardware Frequency


const int numNodes = 3; //number of active nodes in our network
int count = 0;
float nodeReadings[numNodes];
long previousMillis = 0; 
long interval = 500;


//button for scrolling variables
const int buttonPin = 3;
int buttonPushCounter = 0;
int buttonState = 0;
int lastButtonState = 0;

long lastDebounceTime = 0;
long debounceDelay = 50;

DateTime lastReadTime;


//---------------------------------------------------------
//BLAH: SETUP!
//---------------------------------------------------------
void setup() {
  pinMode(buttonPin, INPUT);
  digitalWrite(buttonPin, HIGH);


  Serial.begin(57600);  //setup SErial

  rf12_initialize(myNodeID,freq,network);   // Initialize RFM12 with settings above  
  Serial.println("RFM12B Receiver ready"); 

  Wire.begin(); //start i2c
  rtc.begin(); //start realtime Clock

  lcd.begin(16,2);
  lcd.setBacklight(HIGH);


  pinMode(chipSelect, OUTPUT);
  if (!SD.begin(chipSelect)) {
    Serial.println("Card failed, or not present");
    // don't do anything more:
    return ;
  }
  Serial.println("SD OK");

  logFile = SD.open("log.csv", FILE_WRITE);

  if (! logFile) {
    Serial.println("error opening logFile");
    while (1) ;
  }
  Serial.println("logFile OK");

  //write header
  logFile.println("unixTime, sensor1, sensor2, sensor3");
  logFile.flush();

  logFile.close();
}


//---------------------------------------------------------
//BLAH: DATA PACKETS!
//---------------------------------------------------------
typedef struct {  // Message data Structure, this must match Tx
  float value;	  // floating point measurement value
  int ID;
} 
Payload;
Payload sample;         // declare an instance of type Payload named sample


//---------------------------------------------------------
//BLAH: LOOPS!
//---------------------------------------------------------
void loop() {
  unsigned long currentMillis = millis();

  if (rf12_recvDone() && rf12_crc == 0 && (rf12_hdr & RF12_HDR_CTL) == 0) 
  {
    sample = *(Payload*)rf12_data;            // Access the payload 
    int sampleID = sample.ID;
    float sampleVal = sample.value;

    nodeReadings[sampleID-1] = sampleVal;

    /*---------------WHEN ALL NODES ARE IN----------------------------*/
    if(count == numNodes-1) {
      logFile = SD.open("log.csv", FILE_WRITE);
      lastReadTime = rtc.now();
      logFile.print(lastReadTime.unixtime());
      logFile.print(", ");

      for(int i = 0; i < numNodes; i++) {
        logFile.print(nodeReadings[i]);
        logFile.print(", "); 
      }
      logFile.println();
      logFile.flush();
      logFile.close();
    }

    if(RF12_WANTS_ACK) {
      rf12_sendStart(RF12_ACK_REPLY, 0, 0);
    }
    count++;
    count%=numNodes;
  }

  /*--------------READING BUTTONS -- WITH DEBOUNCE------------------*/

  int reading = digitalRead(buttonPin);

  if (reading != lastButtonState) {
    lastDebounceTime = millis();
  } 

  if ((millis() - lastDebounceTime) > debounceDelay) {

    if (reading != buttonState) {
      buttonState = reading;

      if (buttonState == LOW) {
        buttonPushCounter++;
        buttonPushCounter %= numNodes;
        Serial.println(buttonPushCounter);
      }
    }
  }

  lastButtonState = reading;
  


  /*----------------------DISPLAYING THINGS--------------------------*/
  if(currentMillis - previousMillis > interval) {
    previousMillis = currentMillis;  

    lcd.setCursor(0,0);
    lcd.print(lastReadTime.month());
    lcd.print("/");
    lcd.print(lastReadTime.day());
    lcd.print(" ");
    lcd.print(lastReadTime.hour());
    lcd.print(":");
    lcd.print(lastReadTime.minute());

    lcd.setCursor(0,1);
    lcd.print("Sensor#");
    lcd.print(buttonPushCounter+1);
    lcd.print(":");
    lcd.print(" ");
    lcd.print(nodeReadings[buttonPushCounter]);
  }
}

























