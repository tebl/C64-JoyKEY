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

#define KEY_MAP_WASD 0
#define KEY_MAP_CURSOR 1
byte key_map = KEY_MAP_CURSOR;

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
  if (digitalRead(key_pins[key_id]) == LOW) {
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
void handle_key(byte key_id) {
  switch (key_map) {
    case KEY_MAP_WASD:
      switch(key_id) {
        case JOYKEY_UP:     Keyboard.write('W'); return;
        case JOYKEY_DOWN:   Keyboard.write('S'); return;
        case JOYKEY_LEFT:   Keyboard.write('A'); return;
        case JOYKEY_RIGHT:  Keyboard.write('D'); return;
        case JOYKEY_FIRE1:  Keyboard.write(' '); return;
        case JOYKEY_FIRE2:  Keyboard.write('Q'); return;
        case JOYKEY_FIRE3:  Keyboard.write('E'); return;
      }
      break;
    
    case KEY_MAP_CURSOR:
    default:
      switch(key_id) {
        case JOYKEY_UP:     Keyboard.write(KEY_UP_ARROW); return;
        case JOYKEY_DOWN:   Keyboard.write(KEY_DOWN_ARROW); return;
        case JOYKEY_LEFT:   Keyboard.write(KEY_LEFT_ARROW); return;
        case JOYKEY_RIGHT:  Keyboard.write(KEY_RIGHT_ARROW); return;
        case JOYKEY_FIRE1:  Keyboard.write(' '); return;
        case JOYKEY_FIRE2:  Keyboard.write('Q'); return;
        case JOYKEY_FIRE3:  Keyboard.write('E'); return;
      }
      break;
  }
}

void handle_mode_usb() {
  for (int key_id = 0; key_id < NUM_KEYS; key_id++) {
    if (check_debounced(key_id, true)) {
      handle_key(key_id);
    }
  }
}