#include <Arduino.h>
#include "constants.h"
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

     /*
  pinMode(ST_PIN, INPUT_PULLUP);
  pinMode(RS_PIN, INPUT_PULLUP);
  pinMode(SST_PIN, INPUT_PULLUP);
  pinMode(LED_PIN, OUTPUT);

  // set all pins as inputs and activate pullups
  for (byte c = 0; c < NUM_COLS; c++) {
    pinMode(colPins[c], INPUT);
    digitalWrite(colPins[c], HIGH);

    // clear debounce counts
    for (byte r = 0; r < NUM_ROWS; r++) {
      debounceCount[r][c] = 0;
    }
  }

  // set all pins as inputs
  for (byte r = 0; r < NUM_ROWS; r++) {
    pinMode(rowPins[r], INPUT);
  }

  Keyboard.begin();
  */

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
 * Holding down LEFT & RIGHT for at least the last second will enable WASD-mode
 * over USB.
 */
bool check_boot() {
  if (millis() > boot_timeout) {
    /* JoyKey mode timeout */
    Serial.println(boot_detect);
    if (boot_detect > 0) {
      Serial.println(millis() - boot_detect);
      if ((millis() - boot_detect) > BOOT_MODE_THRESHOLD) {
        return init_mode(KEY_MODE_USB);
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
  if (!boot_done) check_boot();
  else {
    handle_mode();
  }
}

  /*

void loop() {
  if (check_debounced(RS_PIN, 3, ROW3_RS, false)) handle_key(ROW3, ROW3_RS);
  if (check_debounced(ST_PIN, 3, ROW3_ST, false)) handle_key(ROW3, ROW3_ST);
  check_sst();

  for (byte row = 0; row < NUM_ROWS; row++) {
    // turn the row on
    pinMode(rowPins[row], OUTPUT);
    digitalWrite(rowPins[row], LOW);

    for (byte col = 0; col < NUM_COLS; col++) {
      if (check_debounced(
          colPins[col], 
          row, 
          col, 
          is_repeatable(row, col)
        )) {
        handle_key(row, col);
      }
    }

    // turn the row back off
    pinMode(rowPins[row], INPUT);
  }
}
  */

