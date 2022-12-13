#include <Arduino.h>
#include "CytronMotorDriver.h"

//    >> MOTOR  <<
int left_motor[] = {2, 3};
int right_motor[] = {6, 7};
int buttons[] = {18, 19, 20, 22, 21}; // l_up; l_down; speed; r_up; l_down;
int direction = 0;
int currentSpeed = 128;
bool lastSpeedState = true;
bool speedState = false;
CytronMD motor1(PWM_PWM, left_motor[0], left_motor[1]);
CytronMD motor2(PWM_PWM, right_motor[0], right_motor[1]);
//    >> MOTOR  <<

// >> Control functions <<
int getDirection(int upBtn, int downBtn, int leftBtn, int rightBtn);
void moveTo(int direction, int speed);
int setSpeed(int speedBtn);

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

  direction = getDirection(buttons[0], buttons[1], buttons[3], buttons[4]);
  moveTo(direction, setSpeed(buttons[2]));
}

// Custom

int getDirection(int upBtn, int downBtn, int leftBtn, int rightBtn)
{
  int currentDirection = 0;
  digitalRead(upBtn) ? currentDirection = 1 : 0;
  digitalRead(downBtn) ? currentDirection = 2 : 0;
  digitalRead(leftBtn) ? currentDirection = 3 : 0;
  digitalRead(rightBtn) ? currentDirection = 4 : 0;
  return currentDirection;
}

int setSpeed(int speedBtn)
{
  speedState = digitalRead(speedBtn);
  if (!lastSpeedState && speedState)
  {
    currentSpeed == 128 ? currentSpeed = 64 : currentSpeed = 128;
  }
  lastSpeedState = speedState;

  return currentSpeed;
}

void moveTo(int direction, int speed)
{
  switch (direction)
  {
  case 0:
    // Serial.println("Notging");
    motor1.setSpeed(0);
    motor2.setSpeed(0);
    break;
  case 1:
    Serial.println("Up");
    motor1.setSpeed(speed);
    motor2.setSpeed(speed);
    break;
  case 2:
    Serial.println("Down");
    motor1.setSpeed(-speed);
    motor2.setSpeed(-speed);
    break;
  case 3:
    Serial.println("Left");
    motor1.setSpeed(speed);
    motor2.setSpeed(-speed);
    break;
  case 4:
    Serial.println("right");
    motor1.setSpeed(-speed);
    motor2.setSpeed(speed);
    break;
  default:
    Serial.println("Something goes wrong, check your controler conections.");
  }
}
