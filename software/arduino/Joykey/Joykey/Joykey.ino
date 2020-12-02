#include <Arduino.h>
#include "constants.h"
#include "led_control.h"
#include "process_keys.h"
#include "process_serial.h"

void setup() {
  init_serial();
  init_keys();
  init_led();
}

void loop() {
  process_keys();
}