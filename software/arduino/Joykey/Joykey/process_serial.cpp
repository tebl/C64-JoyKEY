#include <Arduino.h>
#include "constants.h"
#include "settings.h"

void init_serial() {
  Serial.begin(115200);
  
  Serial.print(APP_TITLE);
  Serial.print(" ");
  Serial.println(APP_VERSION);
}