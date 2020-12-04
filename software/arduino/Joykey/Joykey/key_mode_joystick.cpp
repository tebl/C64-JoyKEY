#include <Arduino.h>
#include <Joystick.h>
#include "constants.h"
#include "settings.h"
#include "led_control.h"
#include "key_mode.h"

/* Uses the ArduinoJoystickLibrary by MHeironimus, this section is mostly based
 * on his Gamepad-example that comes with the library. The bugs are probably my
 * contribution to the greater good.
 * 
 * https://github.com/MHeironimus/ArduinoJoystickLibrary
 */

extern unsigned long key_debounce[NUM_KEYS];
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

void update_joystick() {
  if (is_waiting_release(JOYKEY_LEFT) && is_waiting_release(JOYKEY_RIGHT)) Joystick.setXAxis(0);
  else if (is_waiting_release(JOYKEY_LEFT)) Joystick.setXAxis(-1);
  else if (is_waiting_release(JOYKEY_RIGHT)) Joystick.setXAxis(1);
  else Joystick.setXAxis(0);

  if (is_waiting_release(JOYKEY_UP) && is_waiting_release(JOYKEY_DOWN)) Joystick.setYAxis(0);
  else if (is_waiting_release(JOYKEY_UP)) Joystick.setYAxis(-1);
  else if (is_waiting_release(JOYKEY_DOWN)) Joystick.setYAxis(1);
  else Joystick.setYAxis(0);

  Joystick.setButton(0, is_waiting_release(JOYKEY_FIRE1));
  if (key_enabled[JOYKEY_FIRE2]) Joystick.setButton(1, is_waiting_release(JOYKEY_FIRE2));
  if (key_enabled[JOYKEY_FIRE3]) Joystick.setButton(2, is_waiting_release(JOYKEY_FIRE3));

  Joystick.sendState();
}

/*
 * Check the state of the specified key_id, any changes will be sent later after
 * doing some sanity checks.
 */
void debounce_joystick_key(byte key_id) {
  if (digitalRead(KEY_PINS[key_id]) == LOW) {
    switch (key_state[key_id]) {
      case KEY_STATE_NEUTRAL:
        if(key_debounce[key_id] == 0) {
          key_debounce[key_id] = millis() + USB_DEBOUNCE_DELAY;
          return;
        }

        if (millis() > key_debounce[key_id]) {
          key_state[key_id] = KEY_STATE_WAIT_RELEASE;
          return;
        }
        break;
      
      case KEY_STATE_WAIT_RELEASE:
        /* Wait for a high state to release */
      default:
        break;
    }
  } else {
    key_debounce[key_id] = 0;
    key_state[key_id] = KEY_STATE_NEUTRAL;
  }
}

void handle_mode_joystick() {
  /* Handle keys that probably shouldn't be active at once */
  debounce_joystick_key(JOYKEY_LEFT);
  debounce_joystick_key(JOYKEY_RIGHT);
  debounce_joystick_key(JOYKEY_UP);
  debounce_joystick_key(JOYKEY_DOWN);
  
  debounce_joystick_key(JOYKEY_FIRE1);
  debounce_joystick_key(JOYKEY_FIRE2);
  debounce_joystick_key(JOYKEY_FIRE3);

  update_joystick();
}