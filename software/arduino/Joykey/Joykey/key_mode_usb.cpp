#include <Arduino.h>
#include "Keyboard.h"
#include "constants.h"
#include "settings.h"
#include "led_control.h"

extern unsigned long key_debounce[NUM_KEYS];
extern byte key_state[NUM_KEYS];
extern bool key_enabled[NUM_KEYS];

byte key_map = KEY_MAP_DEFAULT;

void init_mode_usb() {
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

  Keyboard.begin();
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

void press_key(byte key_id) {
  uint8_t keycode = get_keycode(key_id);
  if (keycode != 0x00) {
    Keyboard.press(keycode);
  }
}

void release_key(byte key_id) {
  uint8_t keycode = get_keycode(key_id);
  if (keycode != 0x00) {
    Keyboard.release(keycode);
  }
}

/*    
 * Check and process key states, which in specific terms means ensuring that
 * we at least try to handle some of the mechanical switch bouncing. This adds
 * some delays in the key handling, but this is adjustable with 
 * USB_DEBOUNCE_DELAY - increase the value if you experience unintended key
 * presses.
 * 
 * Note that the polarity jumpers for FIRE2 and FIRE3 must be set to GND in
 * order for these keys to function as expected.
 */
void check_key(byte key_id) {
  if (digitalRead(KEY_PINS[key_id]) == LOW) {
    switch (key_state[key_id]) {
      case KEY_STATE_NEUTRAL:
        if(key_debounce[key_id] == 0) {
          key_debounce[key_id] = millis() + USB_DEBOUNCE_DELAY;
          return;
        }

        if (millis() > key_debounce[key_id]) {
          key_state[key_id] = KEY_STATE_WAIT_RELEASE;
          press_key(key_id);
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
      release_key(key_id);
    }

    key_debounce[key_id] = 0;
    key_state[key_id] = KEY_STATE_NEUTRAL;
  }
}

void handle_mode_usb() {
  for (int key_id = 0; key_id < NUM_KEYS; key_id++) {
    if (key_enabled[key_id]) {
      check_key(key_id);
    }
  }
}