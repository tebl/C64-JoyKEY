#include <Arduino.h>
#include "Keyboard.h"
#include "constants.h"
#include "settings.h"
#include "led_control.h"

unsigned long sys_shutoff = 0;
unsigned long underglow_timer = 0;
extern unsigned long key_debounce[NUM_KEYS];
extern byte key_state[NUM_KEYS];
extern bool key_enabled[NUM_KEYS];

byte key_map = KEYMAP_DEFAULT;

void init_mode_usb() {
  set_sys(true);
  sys_shutoff = millis() + LED_SHUTOFF;

  set_underglow(LED_UNDERGLOW_MAX);
  underglow_timer = millis() + LED_SHUTOFF;

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

/* Translate keypad keys to their equivalents found on a modern keyboard, if
 * at all possible. There's probably an easier way of doing this, but it is
 * what it is.
 */
unsigned int get_keycode(byte key_id) {
  switch (key_map) {
    case KEYMAP_FUNCTIONS:
      return KEYCODES_FUNCTIONS[key_id];

    case KEYMAP_PLATFORMIO:
      return KEYCODES_PLATFORMIO[key_id];

    case KEYMAP_WASD:
      return KEYCODES_WASD[key_id];
    
    case KEYMAP_CURSOR_EDITOR:
      return KEYCODES_CURSOR_EDITOR[key_id];

    case KEYMAP_CURSOR_GAME:
    default:
      return KEYCODES_CURSOR_GAME[key_id];
  }
}

/* Send keypresses. Note that 0x00 will always be assumed to be some sort of
 * mistake, keycodes from 0x80 and up are extensions to ASCII and we'll just
 * hope noone needs them - I reserved them for key macros.
 */
void press_key(byte key_id) {
  unsigned int keycode = get_keycode(key_id);
  if (keycode == 0x00) return;
  if (keycode < MACRO_NOTHING) {
    Keyboard.press(keycode);
  } else {
    switch (keycode) {
      case MACRO_COPY:
        Keyboard.press(KEY_LEFT_CTRL);
        Keyboard.write('c');
        Keyboard.release(KEY_LEFT_CTRL);
        break;
      case MACRO_CUT:
        Keyboard.press(KEY_LEFT_CTRL);
        Keyboard.write('x');
        Keyboard.release(KEY_LEFT_CTRL);
        break;
      case MACRO_PASTE:
        Keyboard.press(KEY_LEFT_CTRL);
        Keyboard.write('v');
        Keyboard.release(KEY_LEFT_CTRL);
        break;
      case MACRO_UNDO:
        Keyboard.press(KEY_LEFT_CTRL);
        Keyboard.write('z');
        Keyboard.release(KEY_LEFT_CTRL);
        break;
      case MACRO_REDO:
        Keyboard.press(KEY_LEFT_CTRL);
        Keyboard.write('y');
        Keyboard.release(KEY_LEFT_CTRL);
        break;

      case MACRO_PLATFORMIO_BUILD:
        Keyboard.press(KEY_LEFT_CTRL);
        Keyboard.press(KEY_LEFT_ALT);
        Keyboard.write('b');
        Keyboard.release(KEY_LEFT_ALT);
        Keyboard.release(KEY_LEFT_CTRL);
        break;

      case MACRO_PLATFORMIO_SERIAL:
        Keyboard.press(KEY_LEFT_CTRL);
        Keyboard.press(KEY_LEFT_ALT);
        Keyboard.write('s');
        Keyboard.release(KEY_LEFT_ALT);
        Keyboard.release(KEY_LEFT_CTRL);
        break;

      case MACRO_PLATFORMIO_UPLOAD:
        Keyboard.press(KEY_LEFT_CTRL);
        Keyboard.press(KEY_LEFT_ALT);
        Keyboard.write('u');
        Keyboard.release(KEY_LEFT_ALT);
        Keyboard.release(KEY_LEFT_CTRL);
        break;
    }
  }

  /* Boost key underglow to show activity, update timer to keep it from alsmost
   * instantly reducing intensity again. */
  #ifdef BOOST_UNDERGLOW
  boost_underglow();
  underglow_timer = millis() + LED_UNDERGLOW_FADE_SPEED;
  #endif
}

/* Used to release a previously held key. This is mostly left to the
 * operating system, except when we've associated it with a macro sequence -
 * this is in order to avoid repeated sequences. 
 */
void release_key(byte key_id) {
  unsigned int keycode = get_keycode(key_id);
  if (keycode == 0x00) return;
  if (keycode < MACRO_NOTHING) {
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
  /* Shut off SYS after 5 seconds */
  if (sys_shutoff > 0 && millis() > sys_shutoff) {
    if (is_sys_on()) {
      fade_sys();
      sys_shutoff = millis() + LED_FADE_SPEED;
    } else sys_shutoff = 0;
  }

  #ifdef BOOST_UNDERGLOW
  if (millis() > underglow_timer) {
    #ifdef BOOST_UNDERGLOW_MIN
    fade_underglow(BOOST_UNDERGLOW_MIN);
    #else
    fade_underglow();
    #endif
    underglow_timer = millis() + LED_UNDERGLOW_FADE_SPEED;
  }
  #endif

  /* Check keys */
  for (int key_id = 0; key_id < NUM_KEYS; key_id++) {
    if (key_enabled[key_id]) {
      check_key(key_id);
    }
  }
}