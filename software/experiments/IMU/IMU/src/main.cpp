
// ESP32
// SCL 22
// SDA 21

#include <Arduino.h>
#include <Wire.h>
#include <Wire.h>
#include <SPI.h>
#include <Adafruit_BNO08x.h>
#include <Adafruit_LSM9DS1.h>
#include <Adafruit_Sensor.h> // not used in this demo but required!

#define LSM_ENABLE true
#define BNO_ENABLE true

// For SPI mode, we need a CS pin
#define BNO08X_CS 10
#define BNO08X_INT 9

// For SPI mode, we also need a RESET
//#define BNO08X_RESET 5
// but not for I2C or UART
#define BNO08X_RESET -1

Adafruit_BNO08x bno08x(BNO08X_RESET);
sh2_SensorValue_t sensorValue;

// i2c
Adafruit_LSM9DS1 lsm = Adafruit_LSM9DS1();

#define LSM9DS1_SCK A5
#define LSM9DS1_MISO 12
#define LSM9DS1_MOSI A4
#define LSM9DS1_XGCS 6
#define LSM9DS1_MCS 5
// You can also use software SPI
//Adafruit_LSM9DS1 lsm = Adafruit_LSM9DS1(LSM9DS1_SCK, LSM9DS1_MISO, LSM9DS1_MOSI, LSM9DS1_XGCS, LSM9DS1_MCS);
// Or hardware SPI! In this case, only CS pins are passed in
//Adafruit_LSM9DS1 lsm = Adafruit_LSM9DS1(LSM9DS1_XGCS, LSM9DS1_MCS);

char message[128];

// Here is where you define the sensor outputs you want to receive
void setReports(void)
{
  //Serial.println("Setting desired reports");
  if (!bno08x.enableReport(SH2_GAME_ROTATION_VECTOR))
  {
    //Serial.println("Could not enable game vector");
  }
}

void setupSensor()
{
  // 1.) Set the accelerometer range
  lsm.setupAccel(lsm.LSM9DS1_ACCELRANGE_2G);
  //lsm.setupAccel(lsm.LSM9DS1_ACCELRANGE_4G);
  //lsm.setupAccel(lsm.LSM9DS1_ACCELRANGE_8G);
  //lsm.setupAccel(lsm.LSM9DS1_ACCELRANGE_16G);

  // 2.) Set the magnetometer sensitivity
  lsm.setupMag(lsm.LSM9DS1_MAGGAIN_4GAUSS);
  //lsm.setupMag(lsm.LSM9DS1_MAGGAIN_8GAUSS);
  //lsm.setupMag(lsm.LSM9DS1_MAGGAIN_12GAUSS);
  //lsm.setupMag(lsm.LSM9DS1_MAGGAIN_16GAUSS);

  // 3.) Setup the gyroscope
  lsm.setupGyro(lsm.LSM9DS1_GYROSCALE_245DPS);
  //lsm.setupGyro(lsm.LSM9DS1_GYROSCALE_500DPS);
  //lsm.setupGyro(lsm.LSM9DS1_GYROSCALE_2000DPS);
}

void setup()
{
  Serial.begin(115200);

  while (!Serial)
  {
    delay(1); // will pause Zero, Leonardo, etc until serial console opens
  }

  if (BNO_ENABLE)
  {

    if (BNO_ENABLE)
    {
      // Try to initialize!
      if (!bno08x.begin_I2C())
      {
        //if (!bno08x.begin_UART(&Serial1)) {  // Requires a device with > 300 byte UART buffer!
        //if (!bno08x.begin_SPI(BNO08X_CS, BNO08X_INT)) {
        //Serial.println("Failed to find BNO08x chip");
        while (1)
        {
          delay(10);
        }
      }
      //Serial.println("BNO08x Found!");

      for (int n = 0; n < bno08x.prodIds.numEntries; n++)
      {
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
        delay(100);
      }

      setReports();
    }
  }

  if (LSM_ENABLE)
  {
    // Try to initialise and warn if we couldn't detect the chip
    if (!lsm.begin())
    {
      Serial.println("Oops ... unable to initialize the LSM9DS1. Check your wiring!");
      while (1)
        ;
    }
    Serial.println("Found LSM9DS1 9DOF");

    // helper to just set the default scaling we want, see above!
    setupSensor();
  }
}

void loop()
{
  if (BNO_ENABLE)
  {
    if (bno08x.wasReset())
    {
      Serial.print("sensor was reset ");
      setReports();
    }

    if (!bno08x.getSensorEvent(&sensorValue))
    {
      return;
    }

    switch (sensorValue.sensorId)
    {

    case SH2_GAME_ROTATION_VECTOR:
      sprintf(message, "B %f %f %f %f", sensorValue.un.gameRotationVector.real, 
                               sensorValue.un.gameRotationVector.i, 
                               sensorValue.un.gameRotationVector.j, 
                              sensorValue.un.gameRotationVector.k);

      Serial.println(message);
      break;
    }
  }

  if (LSM_ENABLE)
  {
    lsm.read(); /* ask it to read in the data */
    /* Get a new sensor event */
    sensors_event_t a, m, g, temp;
    lsm.getEvent(&a, &m, &g, &temp);
    sprintf(message, "L %f %f %f %f %f %f %f %f %f", a.acceleration.x, a.acceleration.y, a.acceleration.z, m.magnetic.x, m.magnetic.y, m.magnetic.z, g.gyro.x, g.gyro.y, g.gyro.z);
    Serial.println(message);
    delay(10);
  }
}

/*




void setup(void) {
  Serial.begin(115200);

  //Serial.println("Adafruit BNO08x test!");

  

  //Serial.println("Reading events");
  delay(100);
}



void loop() {
  delay(10);


}
*/