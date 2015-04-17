 #include <SoftwareSerial.h>

#define FONA_RX 3 //comms
#define FONA_TX 4 //comms
#define FONA_KEY 5 //powers board down
#define FONA_PS 6 //status pin. Is the board on or not?
#define FONA_RST 8 //FONA Reset
#define ATtimeOut  10000 //timeout for AT commands
#define keyTime 2000 // Time needed to turn on/off the Fona

SoftwareSerial fonaSS = SoftwareSerial(FONA_TX, FONA_RX); //begin Software Serial rx, tx

void setup() {
    //Initialize FONA Pins. Important to do FIRST
    pinMode(FONA_PS, INPUT);  //reads Power State of the FONA
    pinMode(FONA_KEY,OUTPUT); //Changes the Power State (on or off)
    pinMode(FONA_RST, OUTPUT);  //Reset Pin
    digitalWrite(FONA_KEY, HIGH); //if this is floating it can cause system instability
    Serial.begin(9600); //begin Serial
    Serial.println("Serial ready"); 
    fonaSS.begin(9600); //begin software Serial
    Serial.println("SoftwareSerial started");
    turnOnFONA(); //Turns on the FONA and resets it
    Serial.println("Setup Done");
}

void loop() {
    //if there is data coming from the FONA, translate it to the hardware Serial Port
    if (fonaSS.available()){
        char c;
        c = fonaSS.read();
        Serial.write(c);
        delay(20);
    }
    //if there is data at the hardware Serial Port, translate it to the FONA Serial Port
    if (Serial.available()>0){
        fonaSS.write(Serial.read());
    }
}

void turnOnFONA() { //turns FONA ON
    if(!digitalRead(FONA_PS)) { //Check if it's ON already. LOW is off, HIGH is ON.
        digitalWrite(FONA_KEY,LOW); //Pull KEY LOW
        delay(2000); //wait two seconds
        digitalWrite(FONA_KEY,HIGH); //pull it back up again
        Serial.println("FONA Powering Up");
    } else Serial.println("FONA was already on");
    delay(5000); //wait for FONA to power on
    //reset module
    digitalWrite(FONA_RST, HIGH);
    delay(10);
    digitalWrite(FONA_RST, LOW);
    delay(100);
    digitalWrite(FONA_RST, HIGH);
    delay(1000);
}
void turnOffFONA() { //does the opposite of turning the FONA ON (ie. OFF)
    delay(2000); //Give it 2 seconds to clear all operations before powering off
    if(digitalRead(FONA_PS)) { //check if FONA is OFF. If NOT, Power it on!
        digitalWrite(FONA_KEY,LOW);
        delay(2000);
        digitalWrite(FONA_KEY,HIGH);
        Serial.println("FONA is Powered Down");
    } else Serial.println("FONA was already OFF!!");
}
