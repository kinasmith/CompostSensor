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

#define FONA_RX 3 //comms
#define FONA_TX 4 //comms
#define FONA_KEY 5 //powers board down
#define FONA_PS 6 //status pin. Is the board on or not?
#define FONA_RST 8 //FONA Reset
#define ATtimeOut  10000 //timeout for AT commands
#define keyTime 2000 // Time needed to turn on/off the Fona
#define NUM_FIELDS 7
#define NUM_NODES 5
#define BUTTON_PIN 7

LiquidTWI lcd(0);
RFM69 radio;
SoftwareSerial fonaSS = SoftwareSerial(FONA_TX, FONA_RX); //begin Software Serial
Bounce debouncer = Bounce(); 

/*==============|| FONA ||==============*/
String response; //globaly accessable response from AT commands (how do you make a function that returns a String?)
unsigned long Reporting = 60000 * 15;  // Time between uploads  //900 000 is 15 minutes
unsigned long LastReporting = 0;  // When did we last send data
float fonaVoltage = 0;

/*==============|| Data.Sparkfun ||==============*/
const String publicKey = ""; //Public Key
const String privateKey = ""; //Private Key
const String fieldNames[NUM_FIELDS] = {"id", "time", "temp", "humidity","voltage","rssi","gatewayvoltage"};
float fieldData[NUM_FIELDS];
float node00[NUM_FIELDS]={};
float node01[NUM_FIELDS]={};
float node02[NUM_FIELDS]={};
float node03[NUM_FIELDS]={};
float node04[NUM_FIELDS]={};
float* dataArray[]={&node00[0],&node01[0],&node02[0],&node03[0],&node04[0]};

/*==============|| Display & Buttons ||==============*/
unsigned long lcdReporting = 500; //time between updates
unsigned long lcdLastReporting = 0; 
unsigned long lcdBacklightLastReporting = 0; 
bool lcdBacklight;
bool gsmActive = 0;
byte buttonPushCounter = 0; //which sensor value is being displayed

/*==============|| RFM69 ||==============*/
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
  pinMode(FONA_PS, INPUT); 
  pinMode(FONA_KEY,OUTPUT);
  pinMode(FONA_RST, OUTPUT); 
  digitalWrite(FONA_KEY, HIGH);
  Serial.begin(9600);
  fonaSS.begin(9600);
  lcd.begin(16,2);
  lcd.setBacklight(1);
  pinMode(BUTTON_PIN,INPUT_PULLUP); //set button to input
  debouncer.attach(BUTTON_PIN);
  debouncer.interval(5); // interval in ms
  radio.initialize(FREQUENCY,NODEID,NETWORKID);
  radio.setHighPower(); //uncomment only for RFM69HW!
  radio.encrypt(KEY);
  //Serial.println("Setup Done");
}

void loop() {
  response = "";
  /*==============|| Make GET Request ||==============*/
  if (LastReporting + Reporting < millis()) {
    lcd.setBacklight(0);
    radio.sleep(); //disable radio while updating GSM to save a little power
    lcdprint("fona ON");
    turnOnFONA(); //turn on board (sets gsmActive to 1)
    //Serial.print("Flush: "); 
    FONA_flushInput(); 
    //Serial.println();
   // Serial.print("Status: ");
    if(sendATCommand("AT")) {
      //Serial.println(response);
    }
    //Serial.print("Queitly: ");
    if(sendATCommand("ATE0")) {
      //Serial.println(response);
    } 
   // Serial.print("Battery: ");
    if(sendATCommand("AT+CBC")) {
      //+CBC: 0,66,3935OK
      delay(1000);
      //Serial.print(response); Serial.print(": ");
      fonaVoltage = response.substring(8,11).toFloat(); //changed this to add one more character. 100% was == to 10, not 100.
      //Serial.print(fonaVoltage); Serial.println("%");
    }
    //Serial.print("at+cgatt=0: ");
    if(sendATCommand("AT+CGATT=0")){ //Attach to GPRS service (1 - attach, 0 - disengage)
      //Serial.println(response);
    } 
   // Serial.print("at+cgatt=1: ");
    if(sendATCommand("AT+CGATT=1")){ //Attach to GPRS service (1 - attach, 0 - disengage)
      //Serial.println(response);
    }
    //AT+SAPBR - Bearer settings for applications based on IP
   // Serial.print("Connection Type: GPRS: ");
    if(sendATCommand("AT+SAPBR=3,1,\"CONTYPE\",\"GPRS\"")){ //3 - Set bearer perameters
      //Serial.println(response);
    }
    //Serial.print("Set APN: ");
    if(sendATCommand("AT+SAPBR=3,1,\"APN\",\"att.mvno\"")){ //sets APN for transaction
    //if(sendATCommand("AT+SAPBR=3,1,\"APN\",\"epc.tmobile.com\"")){ //sets APN for transaction
      //Serial.println(response);
    }
    //Serial.print("Open Bearer: ");
    if(sendATCommand("AT+SAPBR=1,1")) { //Open Bearer
      //Serial.println(response);
    }
    lcdprint("doHTTP()");
    doHTTP();
    //Serial.print("Disengage GPRS: ");
    if(sendATCommand("AT+SAPBR=0,1")){ //disengages the GPRS context.
      //Serial.println(response);
    }
    lcdprint("fona off");
    turnOffFONA(); //turn off module (sets gsmActive to 0)
    LastReporting = millis();
  }

  if(!gsmActive) {
  /*==============|| RADIO Recieve ||==============*/
    if (radio.receiveDone()) {
      radioReceive();
      if (radio.ACKRequested()) {
        ACKsend();
      }
      Blink(LED,3);
    }
    updateButton();
    updateDisplay();
  }
}

void updateButton() {
  /*==============|| Button Input ||==============*/
  debouncer.update();
  if(debouncer.fell()) {
    lcd.clear(); //clear LCD on every button press
    if(lcdBacklight == 1) {
      buttonPushCounter++; //increment the pushCounter
      buttonPushCounter %= NUM_NODES; //if the push counter is greater than node#, roll back to 0
    } else {
      lcd.setBacklight(1);
      lcdBacklight = 1;
    }
    lcdBacklightLastReporting = millis();
  }
}
void updateDisplay() {
  /*==============|| Update Display ||==============*/
    if(lcdLastReporting + lcdReporting < millis()) {
      lcd.setCursor(0,0); //sets cursor to the upper left corner to start
      lcd.print(int(dataArray[buttonPushCounter][0])); //prints currently viewed sensor number
      lcd.print(":");
      lcd.print("T");
      lcd.print(dataArray[buttonPushCounter][2]); //print TEMP
      lcd.print(" H");
      lcd.print(dataArray[buttonPushCounter][3]); //print Humidity: g/m^3

      lcd.setCursor(0,1); //moves cursor to second line
      lcd.print("fV");
      lcd.print(int(fonaVoltage));
      lcd.print("% ");
      lcd.print("nV");
      lcd.print(dataArray[buttonPushCounter][4]); //print Battery Voltage
      lcd.print("v");
      lcdLastReporting = millis();
    }
  if(lcdBacklightLastReporting + 10000 < millis()) {
    lcd.setBacklight(0);
    lcdBacklight = 0;
  }
}
void radioReceive() {
  if(radio.DATALEN != sizeof(Payload)) {
   // Serial.print("Invalid payload received, not matching Payload struct!");
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
    dataArray[sensorNumber][6] = fonaVoltage;
    /*
    Serial.print(theData.nodeId);
    Serial.print(", T:");
    Serial.print(theData.temp);
    Serial.print(", V:");
    Serial.print(theData.voltage);
    Serial.println();
    */
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
void turnOnFONA() { //turns FONA ON
    gsmActive = 1;
    if(!digitalRead(FONA_PS)) { //Check if it's On already. LOW is off, HIGH is ON.
        Serial.print("on");
      //lcdprint("FONA ON");
      digitalWrite(FONA_KEY,LOW); //pull down power set pin
      unsigned long KeyPress = millis(); 
      while(KeyPress + keyTime >= millis()) {} //wait two seconds
      digitalWrite(FONA_KEY,HIGH); //pull it back up again
    //  Serial.println("FONA Powered Up");
    } else //Serial.println("FONA Already On, Did Nothing");
    delay(5000); //delay for 10sec. NOTE: NEEDS to be longer than 3 seconds, 10 works great
    digitalWrite(FONA_RST, HIGH);
    delay(10);
    digitalWrite(FONA_RST, LOW);
    delay(100);
    digitalWrite(FONA_RST, HIGH);
    delay(7000);
}
void turnOffFONA() { //does the opposite of turning the FONA ON (ie. OFF)
    delay(2000); //This delay is also pretty important. Give it time to finish any operations BEFORE powering it down.
    if(digitalRead(FONA_PS)) { //check if FONA is OFF
        Serial.print("off ");
     // lcdprint("FONA OFF"); 
      digitalWrite(FONA_KEY,LOW);
      unsigned long KeyPress = millis();
      while(KeyPress + keyTime >= millis()) {}
      digitalWrite(FONA_KEY,HIGH);
     // Serial.println("FONA is Powered Down");
    }
    gsmActive = 0;
}
boolean sendATCommand(char Command[]) { //Send an AT command and wait for a response
  //response = "";
  FONA_flushInput();
  int complete = 0; // have we collected the whole response?
  char c; //capture serial stream
  String content; //place to save serial stream
  unsigned long commandClock = millis(); //timeout Clock
  fonaSS.println(Command); //Print Command
  while(!complete && commandClock <= millis() + ATtimeOut) { //wait until the command is complete
    while(!fonaSS.available() && commandClock <= millis()+ATtimeOut);
    while(fonaSS.available()) { //Collect the response
      c = fonaSS.read(); //capture it
      if(c == 0x0A || c == 0x0D); //disregard all new lines and carrige returns (makes the String matching eaiser to do)
      else content.concat(c); //concatonate the stream into a String
    }
    //Serial.println();
   // Serial.println(content); //Debug
    response = content; //Save it out to a global Variable (How do you return a String from a Function?)
    complete = 1;  //Label as Done.
  }
  if (complete ==1) {
    return 1; //Is it done? return a 1
  }
  else {
   // Serial.println("==> Command Timed Out");
   // Serial.println();
    return 0; //otherwise don't (this will trigger if the command times out) 
  }
}
void doHTTP() {
  //  Serial.print("HTTP Initialize: ");
  if(sendATCommand("AT+HTTPINIT")){ //initialize HTTP service. If it's already on, this will throw an Error. 
    //Serial.println(response);
  }
  //Serial.print("HTTPPARA, CID: ");
  if(sendATCommand("AT+HTTPPARA=\"CID\",1")){ //Mandatory, Bearer profile identifier
    //Serial.println(response);
  }
  //for each NODE listen above...
  for(int i=0; i < NUM_NODES; i++) { 
 //   Serial.print("First value of Array is: "); Serial.println(dataArray[i][0]);
    if(dataArray[i][0]>0) { //if first value is greater than 0...(ie. the node is more than 1, it exists/has data)
   //   Serial.print(">>> Transcribing Data for: ");
     // Serial.println(i);    
      //transfer data to holding array to send to URL
      for(int j=0; j < NUM_FIELDS; j++) { 
        fieldData[j] = dataArray[i][j];
        //dataArray[i][j] = 0; //clear array to it doesn't upload multiple repeat values
      }
    //  Serial.print("Set URL: "); 
      if(sendURL()){ //sets the URL for Sparkfun. Same result as the command above. Lots of other options, see the datasheet: sim800_series_at_command_manual
        //Serial.println(response);
      }
     // Serial.print("GET REQUEST: ");
      if(sendATCommand("AT+HTTPACTION=0")){ //make get request =0 - GET, =1 - POST, =2 - HEAD
        //Serial.println(response);
      }
      delay(2000); //wait for a bit for stuff to complete
     // Serial.print("HTTP Read: ");
      if(sendATCommand("AT+HTTPREAD")){ //Read the HTTP response and print it out
        lcdprint(response);
        //Serial.println(response);
      }
      delay(2000);//wait some more
     // Serial.print("Flush: ");
      FONA_flushInput();
      delay(1000);
    }
  }
 // Serial.print("HTTPTERM: ");
  if(sendATCommand("AT+HTTPTERM")){ //Terminate HTTP session. (You can make multiple HTTP requests while HTTPINIT is active. Maybe even to multiple URL's? I don't know)
  //  Serial.println(response);
  }
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
void Blink(byte PIN, int DELAY_MS) {
  pinMode(PIN, OUTPUT);
  digitalWrite(PIN,HIGH);
  delay(DELAY_MS);
  digitalWrite(PIN,LOW);
}
void lcdprint(String toPrint){
  lcd.clear();
  lcd.print(toPrint);
}
void FONA_flushInput() {
    // Read all available serial input to flush pending data.
    uint16_t timeoutloop = 0;
    while (timeoutloop++ < 40) {
        while(fonaSS.available()) {
            Serial.write(fonaSS.read());
            timeoutloop = 0;  // If char was received reset the timer
        }
        delay(1);
    }
}

