#include <Arduino.h>
#include <Wire.h>

// SCL 22
// SDA 21


// Basic demo for readings from Adafruit BNO08x
#include <Adafruit_BNO08x.h>

// For SPI mode, we need a CS pin
#define BNO08X_CS 10
#define BNO08X_INT 9

// For SPI mode, we also need a RESET 
//#define BNO08X_RESET 5
// but not for I2C or UART
#define BNO08X_RESET -1

Adafruit_BNO08x  bno08x(BNO08X_RESET);
sh2_SensorValue_t sensorValue;

// Here is where you define the sensor outputs you want to receive
void setReports(void) {
  //Serial.println("Setting desired reports");
  if (! bno08x.enableReport(SH2_GAME_ROTATION_VECTOR)) {
    //Serial.println("Could not enable game vector");
  }
}


void setup(void) {
  Serial.begin(115200);

  //Serial.println("Adafruit BNO08x test!");

  // Try to initialize!
  if (!bno08x.begin_I2C()) {
  //if (!bno08x.begin_UART(&Serial1)) {  // Requires a device with > 300 byte UART buffer!
  //if (!bno08x.begin_SPI(BNO08X_CS, BNO08X_INT)) {
    //Serial.println("Failed to find BNO08x chip");
    while (1) { delay(10); }
  }
  //Serial.println("BNO08x Found!");

  for (int n = 0; n < bno08x.prodIds.numEntries; n++) {
    /*
    Serial.print("Part ");
    Serial.print(bno08x.prodIds.entry[n].swPartNumber);
    Serial.print(": Version :");
    Serial.print(bno08x.prodIds.entry[n].swVersionMajor);
    Serial.print(".");
    Serial.print(bno08x.prodIds.entry[n].swVersionMinor);
    Serial.print(".");
    Serial.print(bno08x.prodIds.entry[n].swVersionPatch);
    Serial.print(" Build ");
    Serial.println(bno08x.prodIds.entry[n].swBuildNumber);
    */
  }

  setReports();

  //Serial.println("Reading events");
  delay(100);
}



void loop() {
  delay(10);

  if (bno08x.wasReset()) {
    Serial.print("sensor was reset ");
    setReports();
  }
  
  if (! bno08x.getSensorEvent(&sensorValue)) {
    return;
  }
  
  switch (sensorValue.sensorId) {
    
    case SH2_GAME_ROTATION_VECTOR:
      //Serial.print("Game Rotation Vector - r: ");
      Serial.print(sensorValue.un.gameRotationVector.real);
      //Serial.print(" i: ");
      Serial.print(" ");
      Serial.print(sensorValue.un.gameRotationVector.i);
      //Serial.print(" j: ");
      Serial.print(" ");
      Serial.print(sensorValue.un.gameRotationVector.j);
      //Serial.print(" k: ");
      Serial.print(" ");
      Serial.println(sensorValue.un.gameRotationVector.k);
      break;
  }

}
