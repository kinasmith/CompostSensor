 #include <SoftwareSerial.h>

//define FONA pins
#define FONA_RX 4 //comms
#define FONA_TX 3 //comms
#define FONA_KEY 5 //powers board down
#define FONA_PS 6 //status pin. Is the board on or not?

//For FONA
int ATtimeOut = 10000; //timeout for AT commands
String response; //globaly accessable response from AT commands (how do you make a function that returns a String?)
int keyTime = 2000; // Time needed to turn on/off the Fona
String url = "http://www.t4d.cc/Demo/getThat.html"; //Input URL here. This one goes to the class test page

SoftwareSerial mySerial(3, 4);
char inChar = 0;


void setup() {                
  Serial.begin(9600);
  Serial.println("Serial ready");
  mySerial.begin(9600);
    //Set FONA pins (actually pretty important to do FIRST, otherwise the board can be inconsistently powered during startup. 
  Serial.println("SoftwareSerial started");
  //uncomment this to do a single GET request at start.

//  turnOnFONA();
 // delay(10000);

  
  Serial.println("Setup Done");
}

void loop() {
    if (mySerial.available()){
      inChar = mySerial.read();
      Serial.write(inChar);
      delay(20);
    }
    
  if (Serial.available()>0){
    mySerial.write(Serial.read());
  }
}

void turnOnFONA() { //turns FONA ON
    if(! digitalRead(FONA_PS)) { //Check if it's On already. LOW is off, HIGH is ON.
        Serial.print("FONA was OFF, Powering ON: ");
        digitalWrite(FONA_KEY,LOW); //pull down power set pin
        unsigned long KeyPress = millis(); 
        while(KeyPress + keyTime >= millis()) {} //wait two seconds
        digitalWrite(FONA_KEY,HIGH); //pull it back up again
        Serial.println("FONA Powered Up");
    } else {
        Serial.println("FONA Already On, Did Nothing");
    }
}
