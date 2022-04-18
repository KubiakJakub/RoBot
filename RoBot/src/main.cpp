#include <Arduino.h>
//#include "CytronMotorDriver.h"
#include <ESP8266WiFi.h>
#include <ESP8266WiFiMulti.h>

#ifndef STASSID
#define STASSID "TP-Link_5D63"
#define STAPSK  "52136887"
#endif

const char* ssid     = STASSID;
const char* password = STAPSK;

const char* host = "192.168.1.120";
const uint16_t port = 8080 ;

ESP8266WiFiMulti WiFiMulti;
// Configure the motor driver.
//CytronMD motor1(PWM_PWM, 5, 4);   // PWM 1A = Pin 3, PWM 1B = Pin 9.
//CytronMD motor2(PWM_PWM, 0, 2); // PWM 2A = Pin 10, PWM 2B = Pin 11.


/*
    This sketch sends a string to a TCP server, and prints a one-line response.
    You must run a TCP server in your local network.
    For example, on Linux you can use this command: nc -v -l 3000
*/



void setup() {
  Serial.begin(115200);

  // We start by connecting to a WiFi network
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
}


void loop() {
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
}
