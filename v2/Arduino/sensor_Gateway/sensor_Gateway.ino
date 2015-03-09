#include <SD.h>
#include <LiquidTWI.h>
#include <Wire.h>
#include <RFM69.h>
#include <SPI.h>
#include <SoftwareSerial.h>
#include "floatToString.h" 

#define NODEID      1
#define NETWORKID   100
#define FREQUENCY   RF69_433MHZ //Match this with the version of your Moteino! (others: RF69_433MHZ, RF69_868MHZ)
#define KEY         "thisIsEncryptKey" //has to be same 16 characters/bytes on all nodes, not more not less!
#define LED         9
#define SERIAL_BAUD 9600
#define ACK_TIME    30  // # of ms to wait for an ack

//define FONA pins
#define FONA_RX 3 //comms
#define FONA_TX 4 //comms
#define FONA_KEY 5 //powers board down
#define FONA_PS 6 //status pin. Is the board on or not?

RFM69 radio;
SoftwareSerial fonaSS = SoftwareSerial(FONA_TX, FONA_RX); //begin Software Serial

//For FONA
int ATtimeOut = 10000; //timeout for AT commands
String response; //globaly accessable response from AT commands (how do you make a function that returns a String?)
int keyTime = 2000; // Time needed to turn on/off the Fona
unsigned long Reporting = 60000*7;  // Time between uploads  //900 000 is 15 minutes
unsigned long LastReporting = 0;  // When did we last send data

bool promiscuousMode = false; //set to 'true' to sniff all packets on the same network

//for Sparkfun URL building
//public URL: https://data.sparkfun.com/streams/6Jj46RDdY2IYWx4ZXJqz
//public Key: 6Jj46RDdY2IYWx4ZXJqz
//private key: WweZXn6V79hjg5NpAxae
//delete key: 4xMVAk5w41uvN5GegVRW
const String publicKey = "6Jj46RDdY2IYWx4ZXJqz";
const String privateKey = "WweZXn6V79hjg5NpAxae";
const byte NUM_FIELDS = 6;
const String fieldNames[NUM_FIELDS] = {"id", "time", "temp", "humidity","voltage","rssi"};
float fieldData[NUM_FIELDS];


typedef struct {		
  int nodeId; //store this nodeId
  unsigned long uptime; //uptime in ms
  float temp;
  float humidity;
  float voltage;
} Payload;
Payload theData;

const byte NUM_NODES = 5;
float node00[6]={0,0,0,0,0,0};
float node01[6]={0,0,0,0,0,0};
float node02[6]={0,0,0,0,0,0};
float node03[6]={0,0,0,0,0,0};
float node04[6]={0,0,0,0,0,0};
float* dataArray[]={&node00[0],&node01[0],&node02[0],&node03[0],&node04[0]};

char buffer[25]; //for floatToString();

void setup() {
  pinMode(FONA_PS, INPUT); 
  pinMode(FONA_KEY,OUTPUT);   
  digitalWrite(FONA_KEY, HIGH);

  Serial.begin(SERIAL_BAUD);
  Serial.println("Serial started");
  fonaSS.begin(9600);
  Serial.println("SoftwareSerial started");
  delay(10);
  radio.initialize(FREQUENCY,NODEID,NETWORKID);
  radio.setHighPower(); //uncomment only for RFM69HW!
  radio.encrypt(KEY);
  radio.promiscuous(promiscuousMode);
  char buff[50];
  sprintf(buff, "\nListening at %d Mhz...", FREQUENCY==RF69_433MHZ ? 433 : FREQUENCY==RF69_868MHZ ? 868 : 915);
  Serial.println(buff);
}

byte ackCount=0;

void loop() {
  if (radio.receiveDone()) {
    radioReceive();
    printValues();
    if (radio.ACKRequested()) {
      ACKsend();
    }
    Blink(LED,3);
  }
  
  if (LastReporting + Reporting < millis()) {
    Serial.println(">>>>SENDING DATA<<<<");
    turnOnFONA(); //turn on board
    Serial.println("Initializing please wait 10sec...");
    flushFONA(); //if there is stuff in the Serial buffer print it
    delay(10000); //delay for 10sec. NOTE: NEEDS to be longer than 3 seconds, 10 works great.
    setupGPRS(); //turn on GPRS, set APN, etc. 
    //delay(3000); //just wait for a minute for that settle (maybe not needed)
    doHTTP(); //Make Get request and shut down GPRS context.
    Serial.println("Wait 2sec to power down....");
    delay(2000); //This delay is also pretty important. Give it time to finish any operations BEFORE powering it down.
    Serial.println("Powering Down...");
    turnOffFONA(); //turn off module
    flushFONA(); //clean out the Serial Port in prep for a new cycle.
    LastReporting = millis();
  }
}

void radioReceive() {
  //Serial.print('[');Serial.print(radio.SENDERID, DEC);Serial.print("] ");
  //Serial.print(" [RX_RSSI:");Serial.print(radio.readRSSI());Serial.print("]");
    if(radio.DATALEN != sizeof(Payload)) {
      Serial.print("Invalid payload received, not matching Payload struct!");
    }
    else {
      theData = *(Payload*)radio.DATA; //assume radio.DATA actually contains our struct and not something else
      int sensorNumber = theData.nodeId - 10;
      dataArray[sensorNumber][0] = theData.nodeId;
      dataArray[sensorNumber][1] = theData.uptime;
      dataArray[sensorNumber][2] = theData.temp;
      dataArray[sensorNumber][3] = theData.humidity;
      dataArray[sensorNumber][4] = theData.voltage;
      dataArray[sensorNumber][5] = radio.readRSSI();
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
void printValues(){
  for(int i=0; i < NUM_NODES; i++) {
  //   Serial.print("First value of Array is: ");
    //  Serial.println(dataArray[i][0]);
      if(dataArray[i][0]>0) { //if first value is greater than 0...(ie. the node is more than 1, it exists/has data)
        Serial.print("ID: ");
        Serial.print(dataArray[i][0]);
        Serial.print(", TIME: ");
        Serial.print(dataArray[i][1]);
        Serial.print(", TEMP: ");
        Serial.print(dataArray[i][2]);
        Serial.print(", HUMIDITY: ");
        Serial.print(dataArray[i][3]);
        Serial.print(", VOLTAGE: ");
        Serial.print(dataArray[i][4]);
        Serial.print(", RSSI: ");
        Serial.print(dataArray[i][5]);
        Serial.println();
    } //else Serial.print("Skipped Node: "); Serial.println(i);
  }
}
void Blink(byte PIN, int DELAY_MS) {
  pinMode(PIN, OUTPUT);
  digitalWrite(PIN,HIGH);
  delay(DELAY_MS);
  digitalWrite(PIN,LOW);
}
void flushFONA() { //if there is anything is the fonaSS serial Buffer, clear it out and print it in the Serial Monitor.
  char inChar;
  while (fonaSS.available()){
    inChar = fonaSS.read();
    Serial.write(inChar);
    delay(20);
  }
}
void setupGPRS() { //all the commands to setup a GPRS context and get ready for HTTP command
  //the sendATCommand sends the command to the FONA and waits until the recieves a response before continueing on. 
  Serial.print("disable echo: ");
  if(sendATCommand("ATE0")) { //disable local echo
    Serial.println(response);
  }
  Serial.print("long errors: ");
  if(sendATCommand("AT+CMEE=2")){ //enable verbose errors
    Serial.println(response);
  }
  Serial.print("at+cmgf=1: ");
  if(sendATCommand("AT+CMGF=1")){ //sets SMS mode to TEXT mode....This MIGHT not be needed. But it doesn't break anything with it there. 
    Serial.println(response);
  }
  Serial.print("at+cgatt=1: ");
  if(sendATCommand("AT+CGATT=1")){ //Attach to GPRS service (1 - attach, 0 - disengage)
    Serial.println(response);
  }
  //AT+SAPBR - Bearer settings for applications based on IP
  Serial.print("Connection Type: GPRS: ");
  if(sendATCommand("AT+SAPBR=3,1,\"CONTYPE\",\"GPRS\"")){ //3 - Set bearer perameters
    Serial.println(response);
  }
  Serial.print("Set APN: ");
  if(sendATCommand("AT+SAPBR=3,1,\"APN\",\"att.mvno\"")){ //sets APN for transaction
    Serial.println(response);
  }
  if(sendATCommand("AT+SAPBR=1,1")) { //Open Bearer
    if(response == "OK") {
      Serial.println("Engaged GPRS");
    } else {
      Serial.println("GPRS Already on");
    }
  }
}
void doHTTP() { //Make HTTP GET request and then close out GPRS connection
  Serial.println("HTTP BEGUN!");
  Serial.print("HTTPINIT: ");
  //this checks if it is on. If it is, it's turns it off then back on again. (This Is probably not needed. )
  if(sendATCommand("AT+HTTPINIT")){ //initialize HTTP service. If it's already on, this will throw an Error. 
    if(response != "OK") { //if you DO NOT respond OK (ie, you're already on)
      Serial.print("term: ");
      if(sendATCommand("AT+HTTPTERM")) { //TURN OFF
        Serial.print("init: ");
        if(sendATCommand("AT+HTTPINIT")) { //TURN ON
          Serial.println(response);
        }
      }
    } else {
      Serial.println(response);
    }
    Serial.println(response);
  }
  if(sendATCommand("AT+HTTPPARA=\"CID\",1")){ //Mandatory, Bearer profile identifier
    Serial.print("HTTPPARA, CID: ");
    Serial.println(response);
  }

  doGETRequest();

  Serial.print("HTTPTERM: ");
  if(sendATCommand("AT+HTTPTERM")){ //Terminate HTTP session. (You can make multiple HTTP requests while HTTPINIT is active. Maybe even to multiple URL's? I don't know)
    Serial.println(response);
  }
  Serial.print("Disengage GPRS: ");
  if(sendATCommand("AT+SAPBR=0,1")){ //disengages the GPRS context.
    Serial.println(response);
  }
}
void doGETRequest() {
  //for each NODE listen above...
  for(int i=0; i < NUM_NODES; i++) { 
    //Serial.print("First value of Array is: "); Serial.println(dataArray[i][0]);
    if(dataArray[i][0]>0) { //if first value is greater than 0...(ie. the node is more than 1, it exists/has data)
      Serial.print(">>> Transcribing Data for: ");
      Serial.println(i);    
      //transfer data to holding array to send to URL
      for(int j=0; j < NUM_FIELDS; j++) { 
        fieldData[j] = dataArray[i][j];
      }
      Serial.print("Set URL: "); 
      if(sendURL()){ //sets the URL for Sparkfun. Same result as the command above. Lots of other options, see the datasheet: sim800_series_at_command_manual
        Serial.println(response);
      }
      
      Serial.print("GET REQUEST: ");
      if(sendATCommand("AT+HTTPACTION=0")){ //make get request =0 - GET, =1 - POST, =2 - HEAD
        Serial.println(response);
      }
      Serial.println(">>> delay 2k");
      delay(2000); //wait for a bit for stuff to complete
      flushFONA();
      Serial.print("HTTP Read: ");
      if(sendATCommand("AT+HTTPREAD")){ //Read the HTTP response and print it out
        Serial.println(response);
      }
      Serial.println(">>> delay 2k");
      delay(2000);//wait some more
      flushFONA();
      } //else Serial.print("Skipped Node: "); Serial.println(i);
  }
}
boolean sendATCommand(char Command[]) { //Send an AT command and wait for a response
  int complete = 0; // have we collected the whole response?
  char c; //capture serial stream
  String content; //place to save serial stream
  unsigned long commandClock = millis(); //timeout Clock
  fonaSS.println(Command); //Print Command
  while(!complete && commandClock <= millis() + ATtimeOut) { //wait until the command is complete
    while(!fonaSS.available() && commandClock <= millis()+ATtimeOut); //wait until the Serial Port is opened
    while(fonaSS.available()) { //Collect the response
      c = fonaSS.read(); //capture it
      if(c == 0x0A || c == 0x0D); //disregard all new lines and carrige returns (makes the String matching eaiser to do)
      else content.concat(c); //concatonate the stream into a String
    }
    //Serial.println(content); //Debug
    response = content; //Save it out to a global Variable (How do you return a String from a Function?)
    complete = 1;  //Lable as Done.
  }
  if (complete ==1) return 1; //Is it done? return a 1
  else return 0; //otherwise don't (this will trigger if the command times out) 
  /*
    Note: This function may not work perfectly...but it works pretty well. I'm not totally sure how well the timeout function works. It'll be worth testing. 
    Another bug is that if you send a command that returns with two responses, an OK, and then something else, it will ignore the something else and just say DONE as soon as the first response happens. 
    For example, HTTPACTION=0, returns with an OK when it's intiialized, then a second response when the action is complete. OR HTTPREAD does the same. That is poorly handled here, hence all the delays up above. 
  */
}
boolean sendURL() { //builds url for Sparkfun GET Request, sends request and waits for reponse
  int complete = 0;
  char c;
  String content;
  unsigned long commandClock = millis();                      // Start the timeout clock

  fonaSS.print("AT+HTTPPARA=\"URL\",\"");
  fonaSS.print("http://data.sparkfun.com/input/");
  fonaSS.print(publicKey);
  fonaSS.print("?private_key=");
  fonaSS.print(privateKey);
  for (int i_url=0; i_url<NUM_FIELDS; i_url++) {
    fonaSS.print("&");
    fonaSS.print(fieldNames[i_url]);
    fonaSS.print("=");
    fonaSS.print(fieldData[i_url]);
  }
  fonaSS.print("\"");
  fonaSS.println();
  
  //>>>>>DEBUG<<<<<<
  Serial.print("AT+HTTPPARA=\"URL\",\"");
  Serial.print("http://data.sparkfun.com/input/");
  Serial.print(publicKey);
  Serial.print("?private_key=");
  Serial.print(privateKey);
  for (int i_url=0; i_url<NUM_FIELDS; i_url++) {
    Serial.print("&");
    Serial.print(fieldNames[i_url]);
    Serial.print("=");
    Serial.print(fieldData[i_url]);
  }
  Serial.print("\"");
  Serial.println();
  //>>>>>>>>>>>>>>>>>>>>
  
  while(!complete && commandClock <= millis() + ATtimeOut) {
    while(!fonaSS.available() && commandClock <= millis()+ATtimeOut);
    while(fonaSS.available()) {
      c = fonaSS.read();
      if(c == 0x0A || c == 0x0D);
      else content.concat(c);
    }
    response = content;
    complete = 1; 
  }
  if (complete ==1) return 1;
  else return 0;
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
void turnOffFONA() { //does the opposite of turning the FONA ON (ie. OFF)
    if(digitalRead(FONA_PS)) { //check if FONA is OFF
        Serial.print("FONA was ON, Powering OFF: "); 
        digitalWrite(FONA_KEY,LOW);
        unsigned long KeyPress = millis();
        while(KeyPress + keyTime >= millis()) {}
        digitalWrite(FONA_KEY,HIGH);
        Serial.println("FONA is Powered Down");
    } else {
        Serial.println("FONA is already off, did nothing.");
    }
}
