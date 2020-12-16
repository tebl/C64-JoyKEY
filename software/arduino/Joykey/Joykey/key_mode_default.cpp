#include <Arduino.h>
#include "constants.h"
#include "led_control.h"

void init_mode_default() {
  flash_sys(3);
}



void handle_mode_default() {
  #ifdef DEBUG
  if (
    digitalRead(PIN_UP) == LOW ||
    digitalRead(PIN_DOWN) == LOW ||
    digitalRead(PIN_LEFT) == LOW ||
    digitalRead(PIN_RIGHT) == LOW ||
    digitalRead(PIN_FIRE1) == LOW
    ) set_sys(true);
  else set_sys(false);
  #else
  delay(1000);
  fade_pwr();
  #endif
}