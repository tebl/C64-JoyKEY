#include <Arduino.h>
#include "constants.h"
#include "settings.h"
#include "led_control.h"
#include "key_mode.h"

bool boot_done = false;
unsigned long boot_timeout = 0;
unsigned long boot_detect = 0;

 void init_keys() {
  boot_timeout = millis() + 2000;

  /* 
   * Probably won't be stable without pullups, but we'll have to start
   * somewhere instead of something that might kill a connected system.
   */
  pinMode(PIN_UP, INPUT);
  pinMode(PIN_DOWN, INPUT);
  pinMode(PIN_LEFT, INPUT);
  pinMode(PIN_RIGHT, INPUT);
  pinMode(PIN_FIRE1, INPUT);
  pinMode(PIN_FIRE2, INPUT);
  pinMode(PIN_FIRE3, INPUT);
 }

/*
 * When the Arduino boots we'll allow a couple of seconds to configure the mode
 * it should be in, the default does NOTHING! Not even kidding. The purpose of
 * this is to have some sort of safeguard in place so that the Arduino doesn't
 * enable the pullups it needs to reliably detect key presses when running by
 * itself, those on the other hand might stress the vintage computer running on
 * the other end of the cable - which is why we're doing this in the first
 * place.
 * 
 * Holding down LEFT & RIGHT for at least the last second will enable the
 * alternate USB-mode (configured in constants.h).
 */
bool check_boot() {
  if (millis() > boot_timeout) {
    /* JoyKey mode timeout */
    if (boot_detect > 0) {
      if ((millis() - boot_detect) > BOOT_MODE_THRESHOLD) {
        return init_mode(ALTERNATE_MODE);
      }
    }

    return init_mode(KEY_MODE_DEFAULT);
  } else {
    /* Check if LEFT & RIGHT is held down continuously */
    if (digitalRead(PIN_LEFT) == LOW && digitalRead(PIN_RIGHT) == LOW) {
      if (boot_detect == 0) boot_detect = millis();
    } else boot_detect = 0;
  }
  return false;
}

void process_keys() {
  #ifdef FORCE_ALTERNATE
    if (!boot_done) init_mode(ALTERNATE_MODE);
    else handle_mode();
  #else
    if (!boot_done) check_boot();
    else {
      handle_mode();
    }
  #endif
}