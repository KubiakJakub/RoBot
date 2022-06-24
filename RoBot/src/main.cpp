#include <Arduino.h>
//#include "CytronMotorDriver.h"
#include <ESP8266WiFi.h>
#include <ESP8266WiFiMulti.h>


//    >>  WiFi  <<
#ifndef STASSID
#define STASSID "INEA-6A36_2.4G"
#define STAPSK  "HGEQRU7P"
#endif

const char* ssid     = STASSID;
const char* password = STAPSK;
const char* host = "192.168.1.10";
const uint16_t port = 8080 ;
ESP8266WiFiMulti WiFiMulti;

void dataReciver ();
//    >>  WiFi  <<

/*
    This sketch sends a string to a TCP server, and prints a one-line response.
    You must run a TCP server in your local network.
    For example, on Linux you can use this command: nc -v -l 3000
*/
  int btn_state = 0;
//    >> MOTOR  <<
int left_motor[] = {14, 12};
int right_motor[] = {13, 15};
//CytronMD motor1(PWM_PWM, 3, 9);
//CytronMD motor2(PWM_PWM, 10,11);
void setSpeed(int speed, int motor[]);
//    >> MOTOR  <<


void setup() {
  Serial.begin(115200);
  pinMode(0, INPUT_PULLUP);
  pinMode(2, OUTPUT);


  // We start by connecting to a WiFi network
  /*
  WiFi.mode(WIFI_STA);
  WiFiMulti.addAP(ssid, password);

  Serial.println();
  Serial.println();
  Serial.print("Wait for WiFi... ");

  while (WiFiMulti.run() != WL_CONNECTED) {
    Serial.print(".");
    delay(500);
  }

  Serial.println("");
  Serial.println("WiFi connected");
  Serial.println("IP address: ");
  Serial.println(WiFi.localIP());

  delay(500);
  */
}


void loop() {

  btn_state = digitalRead(0);
  if (btn_state == LOW){
    setSpeed(128, left_motor);
    Serial.println(btn_state);
    digitalWrite(2, LOW);
  }else{
    digitalWrite(2, HIGH);
    Serial.println(btn_state);
    setSpeed(-128, left_motor);
  }
delay(1000);
 /*
  >>  WiFi connection <<
  >>  WiFi connection <<
  >>  WiFi connection <<

  Serial.print("connecting to ");
  Serial.print(host);
  Serial.print(':');
  Serial.println(port);

  // Use WiFiClient class to create TCP connections
  WiFiClient client;

  if (!client.connect(host, port)) {
    Serial.println("connection failed");
    Serial.println("wait 5 sec...");
    delay(5000);
    return;
  }

  // This will send the request to the server
  client.println("hello from ESP8266");

  //read back one line from server
  Serial.println("receiving from remote server");
  String line = client.readStringUntil('\r');
  Serial.println(line);

  Serial.println("closing connection");
  client.stop();

  Serial.println("wait 5 sec...");
  delay(5000);
  */
}




 /*
    >> CUSTOM FUNCTIONS
*/

void dataReciver(){
  
}


// PWM control
void setSpeed(int speed, int motor[]){
  // Limit speed
  if (speed > 255) {
      speed = 255;
    } else if (speed < -255) {
      speed = -255;
    }

  // Set speed an dircetion
  if (speed >= 0) {
        analogWrite(motor[0], speed);
        analogWrite(motor[1], 0);
      } else {
        analogWrite(motor[0], 0);
        analogWrite(motor[1], -speed);
      }
}





