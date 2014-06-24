#include <JeeLib.h>
//#include <RF12.h>  // from jeelabs.org
//#include <Ports.h> 
#include <PortsLCD.h>

LiquidCrystal lcd(4, 5, 6, 7, 8, 9);

// RF12B constants:
const byte network  = 100;   // network group (can be in the range 1-255)
const byte myNodeID = 15;     // unique node ID of receiver (1 through 30)

// Frequency of RF12B can be RF12_433MHZ, RF12_868MHZ or RF12_915MHZ.
const byte freq = RF12_433MHZ; // Match freq to module

void setup() {
  digitalWrite(8, HIGH);
  rf12_initialize(myNodeID,freq,network);   // Initialize RFM12 with settings above  
   Serial.begin(57600); 
   Serial.println("RFM12B Receiver ready"); 
  lcd.begin(16, 2);
}

typedef struct {  // Message data Structure, this must match Tx
  //  int   pin;	  // pin number used for this measurement          
  float value;	  // floating point measurement value
  int ID;
} 
Payload;

Payload sample;         // declare an instance of type Payload named sample

void loop() {

  if (rf12_recvDone() && rf12_crc == 0 && (rf12_hdr & RF12_HDR_CTL) == 0) 
  {
    sample = *(Payload*)rf12_data;            // Access the payload  
    if(sample.ID == 1) { 
      lcd.setCursor(0,0); 
      lcd.print(sample.ID);
      lcd.print(": ");
      lcd.print(sample.value);
      Serial.print("Temp # "); 
      Serial.print(sample.ID);                  
      Serial.print(" = ");
      Serial.println(sample.value); 
    }
    if(sample.ID == 2) {
      lcd.setCursor(0,1); 
      lcd.print(sample.ID);
      lcd.print(": ");
      lcd.print(sample.value);
      Serial.print("Temp # "); 
      Serial.print(sample.ID);                  
      Serial.print(" = ");
      Serial.println(sample.value); 

    }

    if(RF12_WANTS_ACK) {
      rf12_sendStart(RF12_ACK_REPLY, 0, 0);
      Serial.println("ACK sent");
    }
  }
}





