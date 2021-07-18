#include <Wire.h>
#include <SPI.h>
#include <SparkFunLSM9DS1.h>

LSM9DS1 imu;

void setup()
{
  Serial.begin(115200);

  Wire.begin();

  if (imu.begin() == false) // with no arguments, this uses default addresses (AG:0x6B, M:0x1E) and i2c port (Wire).
  {
    Serial.println("Failed to communicate with LSM9DS1.");
    while (1);
  }

  imu.setGyroScale(245);  // 245, 500 or 2000
  //imu.setGyroODR(100);

  imu.setAccelScale(2);   // 2, 4, 6, 8, or 16
  //imu.setAccelODR(100);
  
  imu.setMagScale(4);     // 4, 8, 12 or 16
  //imu.setMagODR(100);
}

void loop()
{
  // Update the sensor values whenever new data is available
  if ( imu.gyroAvailable() )
    imu.readGyro();
  
  if ( imu.accelAvailable() )
    imu.readAccel();
    
  if ( imu.magAvailable() )
    imu.readMag();
    
    Serial.print(imu.gx);
    Serial.print(" ");
    Serial.print(imu.gy);
    Serial.print(" ");
    Serial.print(imu.gz);
    Serial.print(" ");

    Serial.print(imu.ax);
    Serial.print(" ");
    Serial.print(imu.ay);
    Serial.print(" ");
    Serial.print(imu.az);
    Serial.print(" ");

    Serial.print(imu.mx);
    Serial.print(" ");
    Serial.print(imu.my);
    Serial.print(" ");
    Serial.println(imu.mz);
}
