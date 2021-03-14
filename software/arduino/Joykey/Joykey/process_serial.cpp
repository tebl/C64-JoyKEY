#include <Arduino.h>
#include "constants.h"
#include "settings.h"

void init_serial() {
  Serial.begin(115200);
  
  /* Disable TX and RX LEDs */
  #ifdef LED_DISABLE_RX_TX
    pinMode(LED_BUILTIN_TX, INPUT);
    pinMode(LED_BUILTIN_RX, INPUT);
  #endif

  Serial.print(APP_TITLE);
  Serial.print(" ");
  Serial.println(APP_VERSION);
}