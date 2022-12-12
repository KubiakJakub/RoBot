#include <Arduino.h>
#include "CytronMotorDriver.h"

//    >>  WiFi  <<
// #ifndef STASSID
// #define STASSID "INEA-6A36_2.4G"
// #define STAPSK "HGEQRU7P"
// #endif

// const char *ssid = STASSID;
// const char *password = STAPSK;
// const char *host = "192.168.1.10";
// const uint16_t port = 8080;

int btn_state = 0;
//    >> MOTOR  <<
int left_motor[] = {2, 3};
int right_motor[] = {6, 7};
int buttons[] = {18, 19, 20, 22, 21}; // l_up; l_down; speed; r_up; l_down;
bool l_up;
bool l_down;
bool speed_btn;
bool r_up;
bool r_down;
int currentSpeed = 128;
bool speedState = false;
CytronMD motor1(PWM_PWM, left_motor[0], left_motor[1]);
CytronMD motor2(PWM_PWM, right_motor[0], right_motor[1]);
//    >> MOTOR  <<

void setup()
{
  delay(5000);
  Serial.begin(115200);
  Serial.println("Setup is running.");
  for (int i = 0; i < 5; i++)
  {
    pinMode(buttons[i], INPUT_PULLDOWN);
  }

  Serial.println("RoBot is Online");
}

void loop()
{

  // if (digitalRead(buttons[0]))
  // {
  //   digitalWrite(left_motor[0], HIGH);
  //   digitalWrite(left_motor[1], LOW);
  // }
  // else
  // {
  //   digitalWrite(left_motor[0], LOW);
  //   digitalWrite(left_motor[1], LOW);
  // }
  // if (digitalRead(buttons[1]))
  // {
  //   digitalWrite(left_motor[0], LOW);
  //   digitalWrite(left_motor[1], HIGH);
  // }
  // else
  // {
  //   digitalWrite(left_motor[0], LOW);
  //   digitalWrite(left_motor[1], LOW);
  // }

  // if (digitalRead(buttons[3]))
  // {
  //   digitalWrite(right_motor[0], HIGH);
  //   digitalWrite(right_motor[1], LOW);
  // }
  // else
  // {
  //   digitalWrite(right_motor[0], LOW);
  //   digitalWrite(right_motor[1], LOW);
  // }

  // if (digitalRead(buttons[4]))
  // {
  //   digitalWrite(right_motor[0], LOW);
  //   digitalWrite(right_motor[1], HIGH);
  // }
  // else
  // {
  //   digitalWrite(right_motor[0], LOW);
  //   digitalWrite(right_motor[1], LOW);
  //}

  switch (direction())
  {
  case /* constant-expression */:
    /* code */
    break;

  default:
    break;
  }

  // Forweoard
  (digitalRead(buttons[0])) ? motor1.setSpeed(currentSpeed) : motor1.setSpeed(0); // V
  (digitalRead(buttons[3])) ? motor2.setSpeed(currentSpeed) : motor2.setSpeed(0); // V

  // Backwoard
  (digitalRead(buttons[1])) ? motor1.setSpeed(-currentSpeed) : motor1.setSpeed(0);
  (digitalRead(buttons[4])) ? motor2.setSpeed(-currentSpeed) : motor2.setSpeed(0);

  // left
  (digitalRead(buttons[0])) ? motor1.setSpeed(currentSpeed) : motor1.setSpeed(0); // V
  (digitalRead(buttons[4])) ? motor2.setSpeed(-currentSpeed) : motor2.setSpeed(0);

  // Right

  // (digitalRead(buttons[2]) != speedState) ? speedState = !speedState : speedState;
  // (speedState) ? currentSpeed = 256 : currentSpeed = 128;

  // if (digitalRead(buttons[0]))
  // {
  //   Serial.print("l_up: ");
  //   Serial.println(digitalRead(buttons[0]));
  // }

  // if (digitalRead(buttons[1]))
  // {
  //   Serial.print("l_down: ");
  //   Serial.println(digitalRead(buttons[1]));
  // }

  // if (digitalRead(buttons[2]))
  // {
  //   Serial.print("Speed: ");
  //   Serial.println(digitalRead(buttons[2]));
  // }

  // if (digitalRead(buttons[3]))
  // {
  //   Serial.print("r_up: ");
  //   Serial.println(digitalRead(buttons[3]));
  // }

  // if (digitalRead(buttons[4]))
  // {
  //   Serial.print("r_down: ");
  //   Serial.println(digitalRead(buttons[4]));
  // }
  // delay(100);
  //  motor1.setSpeed(128);   // Motor 1 runs forward at 50% speed.
  // motor2.setSpeed(-128);  // Motor 2 runs backward at 50% speed.
  // delay(1000);

  // motor1.setSpeed(255);   // Motor 1 runs forward at full speed.
  // motor2.setSpeed(-255);  // Motor 2 runs backward at full speed.
  // delay(1000);

  // motor1.setSpeed(0);     // Motor 1 stops.
  // motor2.setSpeed(0);     // Motor 2 stops.
  // delay(1000);

  // motor1.setSpeed(-128);  // Motor 1 runs backward at 50% speed.
  // motor2.setSpeed(128);   // Motor 2 runs forward at 50% speed.
  // delay(1000);

  // motor1.setSpeed(-255);  // Motor 1 runs backward at full speed.
  // motor2.setSpeed(255);   // Motor 2 runs forward at full speed.
  // delay(1000);

  // motor1.setSpeed(0);     // Motor 1 stops.
  // motor2.setSpeed(0);     // Motor 2 stops.
  // delay(1000);
}
