#include <Arduino.h>
#include "Keyboard.h"
#include "constants.h"
#include "led_control.h"

unsigned long debounce[NUM_KEYS];
byte key_map = KEY_MAP_DEFAULT;
byte key_state[NUM_KEYS];

void init_mode_usb() {
  set_sys(true);

  for (int key_id = 0; key_id < NUM_KEYS; key_id++) {
    pinMode(KEY_PINS[key_id], INPUT_PULLUP);
    debounce[key_id] = 0;
    key_state[key_id] = KEY_STATE_NEUTRAL;
  }

  Keyboard.begin();
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
  if (digitalRead(KEY_PINS[key_id]) == LOW) {
    switch (key_state[key_id]) {
      case KEY_STATE_NEUTRAL:
        if(debounce[key_id] == 0) {
          debounce[key_id] = millis() + USB_DEBOUNCE_DELAY;
          return false;
        }

        if (millis() > debounce[key_id]) {
          if (allow_repeat) {
            debounce[key_id] += USB_REPEAT_DELAY;
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
uint8_t get_keycode(byte key_id) {
  switch (key_map) {
    case KEY_MAP_WASD:
      return KEY_MAP_WASD_KEYS[key_id];
    
    case KEY_MAP_CURSOR:
    default:
      return KEY_MAP_CURSOR_KEYS[key_id];
  }
}

void check_key(byte key_id) {
  if (digitalRead(KEY_PINS[key_id]) == LOW) {
    switch (key_state[key_id]) {
      case KEY_STATE_NEUTRAL:
        if(debounce[key_id] == 0) {
          debounce[key_id] = millis() + USB_DEBOUNCE_DELAY;
          return;
        }

        if (millis() > debounce[key_id]) {
          key_state[key_id] = KEY_STATE_WAIT_RELEASE;
          Keyboard.press(get_keycode(key_id));
          return;
        }
        break;
      
      case KEY_STATE_WAIT_RELEASE:
        /* Wait for a high state to release */
      default:
        return;
    }
  } else {
    if (key_state[key_id] != KEY_STATE_NEUTRAL) {
      Keyboard.release(get_keycode(key_id));
    }

    // not pressed, reset debounce count
    debounce[key_id] = 0;
    key_state[key_id] = KEY_STATE_NEUTRAL;
  }
}

void handle_mode_usb() {
  for (int key_id = 0; key_id < NUM_KEYS; key_id++) {
    /*
    if (check_debounced(key_id)) {
      Keyboard.write(get_keycode(key_id));
    }
    */

    check_key(key_id);
  }
}