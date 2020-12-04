#include <Arduino.h>
#include <Joystick.h>
#include "constants.h"
#include "led_control.h"

/* Uses the ArduinoJoystickLibrary by MHeironimus, this section is mostly based
 * on his Gamepad-example that comes with the library. The bugs are probably my
 * contribution to the greater good.
 * 
 * https://github.com/MHeironimus/ArduinoJoystickLibrary
 */

extern byte key_state[NUM_KEYS];
extern bool key_enabled[NUM_KEYS];

Joystick_ Joystick(
  JOYSTICK_DEFAULT_REPORT_ID,
  JOYSTICK_TYPE_GAMEPAD,
  3, 0,                  // Button Count, Hat Switch Count
  true, true, false,     // X and Y, but no Z Axis
  false, false, false,   // No Rx, Ry, or Rz
  false, false,          // No rudder or throttle
  false, false, false    // No accelerator, brake, or steering
);

void init_mode_joystick() {
  set_sys(true);

  for (int key_id = 0; key_id <= JOYKEY_FIRE1; key_id++) {
    pinMode(KEY_PINS[key_id], INPUT_PULLUP);
    key_enabled[key_id] = true;
  }

  /* Verify FIRE2 polarity setting */
  pinMode(PIN_FIRE2_POL, INPUT);
  if (digitalRead(PIN_FIRE2_POL) == LOW) {
    pinMode(KEY_PINS[JOYKEY_FIRE2], INPUT_PULLUP);
    key_enabled[JOYKEY_FIRE2] = true;
  } else key_enabled[JOYKEY_FIRE2] = false;

  /* Verify FIRE3 polarity setting */
  pinMode(PIN_FIRE3_POL, INPUT);
  if (digitalRead(PIN_FIRE3_POL) == LOW) {
    pinMode(KEY_PINS[JOYKEY_FIRE3], INPUT_PULLUP);
    key_enabled[JOYKEY_FIRE3] = true;
  } else key_enabled[JOYKEY_FIRE3] = false;


  /* Initialize Joystick Library */
  Joystick.begin(false);
  Joystick.setXAxisRange(-1, 1);
  Joystick.setYAxisRange(-1, 1);
}

/*
 * Check the state of the specified key_id, any changes detected will be
 * automatically reported. The return value is used to report whether a
 * key is currently active, this is useful when we want to avoid sending
 * any weird updates such as pressing up and down at the same time
 * (something an ordinary joystick/gamepad probably shouldn't).
 */
bool check_joystick_key(byte key_id) {
  if (!key_enabled[key_id]) return false;
  int new_state = digitalRead(KEY_PINS[key_id]);

  if (new_state != key_state[key_id]) {
    switch (key_id) {
    case JOYKEY_UP:
      if (new_state == LOW) Joystick.setYAxis(-1);
      else Joystick.setYAxis(0);
      break;

    case JOYKEY_DOWN:
      if (new_state == LOW) Joystick.setYAxis(1);
      else Joystick.setYAxis(0);
      break;

    case JOYKEY_LEFT:
      if (new_state == LOW) Joystick.setXAxis(-1);
      else Joystick.setXAxis(0);
      break;

    case JOYKEY_RIGHT:
      if (new_state == LOW) Joystick.setXAxis(1);
      else Joystick.setXAxis(0);
      break;

    case JOYKEY_FIRE1:
      Joystick.setButton(0, new_state == LOW);
      break;

    case JOYKEY_FIRE2:
      Joystick.setButton(1, new_state == LOW);
      break;

    case JOYKEY_FIRE3:
      Joystick.setButton(2, new_state == LOW);
      break;
    }
  }

  key_state[key_id] = new_state;
  return new_state == LOW;
}

void handle_mode_joystick() {
  /* Handle keys that probably shouldn't be active at once */
  if (!check_joystick_key(JOYKEY_LEFT)) check_joystick_key(JOYKEY_RIGHT);
  if (!check_joystick_key(JOYKEY_UP)) check_joystick_key(JOYKEY_DOWN);
  
  check_joystick_key(JOYKEY_FIRE1);
  check_joystick_key(JOYKEY_FIRE2);
  check_joystick_key(JOYKEY_FIRE3);
  
  Joystick.sendState();
  delay(50);
}