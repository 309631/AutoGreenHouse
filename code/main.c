#include <dht.h>  // Include library
#include <LiquidCrystal_I2C.h>
#define TEMP_SENSOR_PORT 8  // Defines pin number to which the sensor is connected
#define LED_TEMP_PORT 2
#define MAX_HUMIDITY 50
#define MAX_TEMP 24


LiquidCrystal_I2C lcd(0x27, 16, 2); // I2C address 0x27, 16 column and 2 rows

//void check(int value, int value_max, int PORT)
//{
//  if(value>value_max)
//  {digitalWrite(PORT,HIGH);}
//  else
//  {digitalWrite(PORT,LOW);}
//}

dht DHT;      // Creates a DHT object

void setup() {
  Serial.begin(9600);
  lcd.init(); // initialize the lcd
  lcd.backlight();
}

void loop() {
  int readData = DHT.read11(TEMP_SENSOR_PORT);
  float t = DHT.temperature;  // Read temperature
  float h = DHT.humidity;   // Read humidity
//  check(h,MAX_HUMIDITY,LED_TEMP_PORT);
//  check(t,MAX_TEMP,LED_TEMP_PORT);

if(h>MAX_HUMIDITY || t>MAX_TEMP)
  {digitalWrite(LED_TEMP_PORT,HIGH);}
  else
  {digitalWrite(LED_TEMP_PORT,LOW);}


//  Serial.print("Temperature = ");
//  Serial.print(t);
//  Serial.print("°C | ");
//  Serial.print((t*9.0)/5.0+32.0); // Convert celsius to fahrenheit
//  Serial.println("°F ");
//  Serial.print("Humidity = ");
//  Serial.print(h);
//  Serial.println("% ");
//  Serial.println("");

  
  lcd.setCursor(0, 0);         // move cursor to   (0, 0)
  lcd.print("TEMP = ");
  lcd.print(t); 
  lcd.print("°C");
  lcd.setCursor(2, 1);         // move cursor to   (2, 1)
  lcd.print("HUM = "); // print message at (2, 1)
  lcd.print(h); // print message at (2, 1)
  lcd.print("%"); // print message at (2, 1)

  delay(2000); // wait two seconds
}
