#include <LiquidTWI.h>
#include <Wire.h>

#define analogReadPin 3
#define readEnablePin 8

LiquidTWI lcd(0);
int voltage;

void setup() {
	lcd.begin(16, 2);
	pinMode(readEnablePin, OUTPUT);
}

void loop() {
	digitalWrite(readEnablePin, HIGH);
	voltage = analogRead(analogReadPin);
	delay(500);
	digitalWrite(readEnablePin, LOW);
	lcd.clear();
	lcd.setCursor(0,1);
	lcd.print(voltage);
	delay(2000);
}
