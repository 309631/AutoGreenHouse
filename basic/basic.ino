#include <DHT.h>
#include <DHT_U.h>

#include <LiquidCrystal_I2C.h>

#define TEMP_SENSOR_PIN 8  // Defines pin number to which the sensor is connected
#define LED_TEMP_PORT 2
#define PHOTORESISTOR_PORT A0
#define DHTTYPE DHT11

#define MAX_HUMIDITY 50
#define MAX_TEMP 24

#define MEASURE_DELAY_MINUTES .1




LiquidCrystal_I2C lcd(0x27, 16, 2); // I2C address 0x27, 16 column and 2 rows
DHT dht = DHT(TEMP_SENSOR_PIN, DHTTYPE);      // Creates a DHT object

void communication();

void setup() {
  Serial.begin(9600);
  lcd.init(); // initialize the lcd
  lcd.backlight();
  pinMode(PHOTORESISTOR_PORT, INPUT);
  Serial.println("time,temperature,humidity,light");
  dht.begin();
}

void loop() {
  float t = dht.readTemperature();  // Read temperature
  float h = dht.readHumidity();   // Read humidity
  int light = analogRead(A0);
//  check(h,MAX_HUMIDITY,LED_TEMP_PORT);
//  check(t,MAX_TEMP,LED_TEMP_PORT);

if(h>MAX_HUMIDITY || t>MAX_TEMP)
  {digitalWrite(LED_TEMP_PORT,HIGH);}
  else
  {digitalWrite(LED_TEMP_PORT,LOW);}

//  function for receiving data through Serial Port/UART
  communication();
//
      Serial.print(dht.readTemperature());
      Serial.print(",");
      Serial.print(dht.readHumidity());
      Serial.print(",");
      Serial.println(analogRead(A0));


  
  lcd.setCursor(0, 0);         // move cursor to   (0, 0)
  lcd.print("T= ");
  lcd.print(t); 
  lcd.print("st C");
  lcd.setCursor(2, 1);         // move cursor to   (2, 1)
  lcd.print("H="); // print message at (2, 1)
  lcd.print(h); // print message at (2, 1)
  lcd.print("% "); // print message at (2, 1)
  lcd.print("L=");
  lcd.print(light); 

//  delay(MEASURE_DELAY_MINUTES*60000); // wait x minutes
  delay(500);
}



void communication(){ 
  
  if(Serial.available() != 0)
  {
  int COM = 0;
  COM = Serial.read();

  switch(COM)
  {

    case '1':
      Serial.print(dht.readTemperature());
      Serial.print(",");
      Serial.print(dht.readHumidity());
      Serial.print(",");
      Serial.println(analogRead(A0));
  }
  }
}
