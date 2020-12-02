#include <Arduino.h>
#include "Keyboard.h"
#include "constants.h"
#include "led_control.h"

const int key_pins[NUM_KEYS] = {
  PIN_UP,
  PIN_DOWN,
  PIN_LEFT,
  PIN_RIGHT,
  PIN_FIRE1,
  PIN_FIRE2,
  PIN_FIRE3
};
unsigned long debounce[NUM_KEYS];

#define KEY_STATE_NEUTRAL 0
#define KEY_STATE_CHANGING 1
#define KEY_STATE_WAIT_RELEASE 2
#define KEY_STATE_REPEAT 3
byte key_state[NUM_KEYS];


void init_mode_usb() {
  set_sys(true);

  for (int key_id = 0; key_id < NUM_KEYS; key_id++) {
    pinMode(key_pins[key_id], INPUT_PULLUP);
    debounce[key_id] = 0;
    key_state[key_id] = KEY_STATE_NEUTRAL;
  }
}

/*
 * Reads the specified digital pins, debouncing is performed in order to ignore
 * erroneous key-presses due to the mechanical nature of the switches
 * themselves. A key will normally only register as pressed as long as the
 * reading has been stable for a reasonable amount of time. allow_repeat
 * specifies wether a key held down will register as subsequent presses, or if
 * it should be ignored until key has been released.
 */
bool check_debounced(byte key_id, bool allow_repeat) {
  if (digitalRead(key_pins[key_id]) == LOW) {
    switch (key_state[key_id]) {
      case KEY_STATE_NEUTRAL:
        if(debounce[key_id] == 0) {
          debounce[key_id] = millis() + DEBOUNCE_VALUE;
          return false;
        }

        if (millis() > debounce[key_id]) {
          if (allow_repeat) {
            debounce[key_id] += REPEAT_DELAY;
          } else {
            key_state[key_id] = KEY_STATE_WAIT_RELEASE;
          }
          return true;
        }
        break;
      
      case KEY_STATE_WAIT_RELEASE:
        /* Wait for a high state to release */
      default:
        return false;
        break;
    }
    /*
    // has the switch been pressed continually for long enough?
    if (millis() > debounce[key_id]) {
      return true;
    }

    debounce_count[key_id]++;

    // has the switch been pressed continually for long enough?
    int count = debounce_count[key_id];
    if (count == DEBOUNCE_VALUE) {
      return true;
    } else if (count > DEBOUNCE_VALUE) {
      if (count == (DEBOUNCE_VALUE + REPEAT_DELAY)) {
        debounce_count[key_id] = DEBOUNCE_VALUE + 1;

        if (allow_repeat) return true;
        else return false;
      }
    }
    */
  } else {
    // not pressed, reset debounce count
    debounce[key_id] = 0;
    key_state[key_id] = KEY_STATE_NEUTRAL;
  }
  
  return false;
}

/*
 * Translate keypad keys to their equivalents found on a modern keyboard.
 */
void handle_key(byte key_id) {
  switch(key_id) {
    case KEY_UP: Keyboard.write('W'); return;
    case KEY_DOWN: Keyboard.write('S'); return;
    case KEY_LEFT: Keyboard.write('A'); return;
    case KEY_RIGHT: Keyboard.write('D'); return;
    case KEY_FIRE1: Keyboard.write(' '); return;
    case KEY_FIRE2: Keyboard.write('Q'); return;
    case KEY_FIRE3: Keyboard.write('E'); return;
  }
}

void handle_mode_usb() {
  if (check_debounced(KEY_UP, true)) Serial.println("KEY_UP");
  if (check_debounced(KEY_DOWN, true)) Serial.println("KEY_DOWN");
  if (check_debounced(KEY_LEFT, true)) Serial.println("KEY_LEFT");
  if (check_debounced(KEY_RIGHT, true)) Serial.println("KEY_RIGHT");
  if (check_debounced(KEY_FIRE1, true)) Serial.println("KEY_FIRE1");
  if (check_debounced(KEY_FIRE2, true)) Serial.println("KEY_FIRE2");
  if (check_debounced(KEY_FIRE3, true)) Serial.println("KEY_FIRE3");
}