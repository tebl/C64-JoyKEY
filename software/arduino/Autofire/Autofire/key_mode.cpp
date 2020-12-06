#include <Arduino.h>
#include "constants.h"
#include "settings.h"
#include "key_mode_default.h"
#include "key_mode_autofire.h"

extern bool boot_done;
int joykey_mode = KEY_MODE_DEFAULT;

unsigned long key_debounce[NUM_KEYS];
byte key_state[NUM_KEYS];
bool key_enabled[NUM_KEYS];

bool init_mode(byte mode) {
  joykey_mode = mode;
  boot_done = true;
  switch (mode) {
    case KEY_MODE_AUTOFIRE:
      init_mode_autofire();
      #ifndef FORCE_ALTERNATE
        /* Allow the user some time to release key combination before continuing. */
        delay(BOOT_DELAY);
      #endif
      break;
    
    case KEY_MODE_DEFAULT:
    default:
      init_mode_default();
      break;
  }
  return true;
}

bool is_waiting_release(byte key_id) {
  return key_state[key_id] == KEY_STATE_WAIT_RELEASE;
}

void handle_mode() {
  switch (joykey_mode) {
    case KEY_MODE_AUTOFIRE:
      handle_mode_autofire();
      break;
    
    case KEY_MODE_DEFAULT:
    default:
      handle_mode_default();
      break;
  }
}