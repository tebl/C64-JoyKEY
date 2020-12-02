#include <Arduino.h>
#include "constants.h"
#include "key_mode_default.h"
#include "key_mode_usb.h"

extern bool boot_done;
int joykey_mode = -1;

bool init_mode(byte mode) {
  joykey_mode = mode;
  boot_done = true;
  switch (mode) {
    case KEY_MODE_USB:
      init_mode_usb();
      break;
    
    case KEY_MODE_DEFAULT:
    default:
      init_mode_default();
      break;
  }
  return true;
}

void handle_mode() {
  switch (joykey_mode) {
    case KEY_MODE_USB:
      handle_mode_usb();
      break;
    
    case KEY_MODE_DEFAULT:
    default:
      handle_mode_default();
      break;
  }
}