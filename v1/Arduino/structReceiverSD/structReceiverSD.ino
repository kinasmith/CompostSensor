/*----------------------------------------------------------------------------------------------
 Compost Sensor 
 
 --Reciever Node for normal Arduino and a HopeRF RFM12B radio module
 (tested on Uno)
 --using a modified Adafruit SD Datalogger sheild
 --the CS pin trace is cut and moved to over to pin 8 due to conflictions with the jeeLib library
 --using also an i2c backpack for the LCD display to get it off the i2c bus
 
 Note: This also logs in Unix time, which is not human readable, but is VERY machine readable
 -it does display in human readable time-stamp though
 
 Written by Kina Smith - 06/2014
 kina@kinasmith.com
www.kinasmith.com
 
 Libraries used:
 JeeLib <- https://github.com/jcw/jeelib
 Wire <- native: i2c
 RTClib <- https://github.com/adafruit/RTClib/
 SD <- native: SD card interfacing
 LiquidTWI <- https://github.com/Stephanie-Maks/Arduino-LiquidTWI
 
 TODO:
 --make the positioning of the values in the csv file more robust.
 -it will currently break if one value does not get recieved (ie. a node dies)
 ----------------------------------------------------------------------------------------------*/

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
const int chipSelect = 8; //8 for the modified sheild
File logFile; //file we're writing to on SD

// RF12B constants:
// network group (can be in the range 1-255)
const byte network  = 100;// <-----MUST BE THE SAME AS THE SENDER NODES
//unique node ID of receiver
const byte myNodeID = 15;// <-------MUST BE UNIQUE LEAVE AS IS UNLESS NEED TO CHANGE
// Hardware Frequency
const byte freq = RF12_433MHZ; 

//number of active nodes in our network
const int numNodes = 3; // <-----CHANGE THIS ACCORDINGLY AS YOU ADD NODES TO THE NETWORK
int count = 0; //this is the stupidest undescriptive thing you can name a variable
float nodeReadings[numNodes]; //array to store the values from each incoming node

//---------------------------------------------------------
//BLAH: DISPLAY THINGS
//---------------------------------------------------------
long previousMillis = 0; //non-blocking loop for updating display
long interval = 500; //update frequency of the display
const int buttonPin = 3; //button input for scrolling variables
int buttonPushCounter = 0; //which sensor value is being displayed
int buttonState = 0; //state of button
int lastButtonState = 0; //last state of button (allows for one-shot triggers)
//for debouncing the button
long lastDebounceTime = 0;
long debounceDelay = 50;
DateTime lastReadTime; //time of last write to the sdCard


//---------------------------------------------------------
//BLAH: SETUP!
//---------------------------------------------------------
void setup() {
  pinMode(buttonPin, INPUT); //set button to input
  digitalWrite(buttonPin, HIGH); //engage internal pullup resistor

  Serial.begin(57600);  //setup Serial output for debug

  rf12_initialize(myNodeID,freq,network);   // Initialize RFM12 with settings above  
  Serial.println("RFM12B Receiver ready"); 

  Wire.begin(); //start i2c
  rtc.begin(); //start realtime Clock
  Serial.println("RTC Ready"); 

  lcd.begin(16,2); //start the LCD 16char wide 2 lines tall
  //blink the backlight for a second just for shits and giggles
  for(int i = 0; i < 5; i++) {
    lcd.setBacklight(HIGH);
    delay(100);
    lcd.setBacklight(LOW);
    delay(100); 
  }
  lcd.setBacklight(HIGH);

  //setup the SD and create failsafes
  pinMode(chipSelect, OUTPUT); //set chipSelect (that we have modified) to OUTPUT
  if (!SD.begin(chipSelect)) { //if the SD fails to initialize
    Serial.println("Card failed, or not present"); 
    // and don't do anything more:
    return ;
  }
  Serial.println("SD OK"); //all is OK

  logFile = SD.open("log.csv", FILE_WRITE); //open (or create if it doesn't exist) the log file

  if (! logFile) { //if there is an error
    Serial.println("error opening logFile");
    // and don't do anything more;
    while (1) ;
  }
  Serial.println("logFile OK"); //all is OK

  //write header line
  logFile.println("unixTime, sensor1, sensor2, sensor3");
  logFile.flush(); //flush the serial line to clear it 
  logFile.close(); //and close the file 
}

//---------------------------------------------------------
//Set up data packet for unpacking (should be the same as the Sender Nodes)
//---------------------------------------------------------
typedef struct {  // Message data Structure, this must match Tx
  float value;	  // floating point measurement value
  int ID; //NODE ID of sender
} 
Payload;
Payload sample;  // declare an instance of type Payload named sample

//---------------------------------------------------------
//BLAH: LOOPS!
//---------------------------------------------------------
void loop() {
  unsigned long currentMillis = millis(); //set current time for non-blocking timed iteration

  if (rf12_recvDone() && rf12_crc == 0 && (rf12_hdr & RF12_HDR_CTL) == 0) { //if receiving is done
    sample = *(Payload*)rf12_data;  // Access the payload 
    //set payload values to stable variables. Not needed, but makes me feel better 
    int sampleID = sample.ID;
    float sampleVal = sample.value;

    nodeReadings[sampleID-1] = sampleVal; //save each node value to the array with zero indexed Node ID's (the '-1')

    /*---------------WHEN ALL NODES ARE IN----------------------------*/
    if(count == numNodes-1) { //if the number of payloads recieved == the number of nodes that we have declared up top.
      //write them to the SD card
      logFile = SD.open("log.csv", FILE_WRITE); //open File
      lastReadTime = rtc.now(); //get current time
      logFile.print(lastReadTime.unixtime()); //write the current unix time
      logFile.print(","); //print a comma (this is a csv after all

      for(int i = 0; i < numNodes; i++) { //for each node value
        logFile.print(nodeReadings[i]); //print out the saved value
        logFile.print(","); //and then a comma
      }
      logFile.println(); //print a carrige return
      logFile.flush(); //flush the serial line
      logFile.close(); //and close the file
    }
    //if payload requested an ACK, give one (we give them)
    if(RF12_WANTS_ACK) {
      rf12_sendStart(RF12_ACK_REPLY, 0, 0);
    }
    //this happens for each payload we get. 
    count++; //keeps track of the payload we're on
    count%=numNodes; // and rolls over back to 0 at the max # of nodes we have
  }

  /*--------------READING BUTTONS -- WITH DEBOUNCE------------------*/
  int reading = digitalRead(buttonPin); //read button pin
  if (reading != lastButtonState) { //if switch changed
    lastDebounceTime = millis(); //reset debounce timer
  } 

  if ((millis() - lastDebounceTime) > debounceDelay) {
    // whatever the reading is at, it's been there for longer
    // than the debounce delay, so take it as the actual current state:

    //if the button state has changed:
    if (reading != buttonState) {
      buttonState = reading;

      if (buttonState == LOW) { //only do a thing if the button is LOW: this creates action on a falling edge, our button is held high, 
        lcd.clear(); //clear LCD Screen
        buttonPushCounter++; //increment the pushCounter
        buttonPushCounter %= numNodes; //if the push counter is greater than node#, roll back to 0
        Serial.println(buttonPushCounter);
      }
    }
  }

  lastButtonState = reading; //save the reading for next time through the loop

  /*----------------------DISPLAYING THINGS--------------------------*/
  //non-blocking loop for updating display
  if(currentMillis - previousMillis > interval) {
    previousMillis = currentMillis;  

    lcd.setCursor(0,0); //sets cursor to the upper left corner to start
    //prints date and time of last saved readings
    lcd.print(lastReadTime.month());
    lcd.print("/");
    lcd.print(lastReadTime.day());
    lcd.print(" ");
    lcd.print(lastReadTime.hour());
    lcd.print(":");
    lcd.print(lastReadTime.minute());

    lcd.setCursor(0,1); //moves cursor to second line
    lcd.print("Sensor#"); //prints that string
    lcd.print(buttonPushCounter+1); //prints currently viewed sensor number
    lcd.print(":");
    lcd.print(" ");
    lcd.print(nodeReadings[buttonPushCounter]); //displays that sensor value
  }
}






























