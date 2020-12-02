#include <Arduino.h>
#include "constants.h"

void init_led() {
  pinMode(LED_PWR, OUTPUT);
  analogWrite(LED_PWR, LED_PWR_MAX);

  digitalWrite(LED_SYS, LOW);
  pinMode(LED_SYS, OUTPUT);
}

/*
 * Effectively sets the brightness of the LED marked PWR. 
 */
void set_pwr(int value) {
  analogWrite(LED_PWR, value);
}

/*
 * Delay used when spacing out user feedback. Note that this is a blocking
 * function, so it'll probably not be much use when we want to respond to
 * keypresses in due time. 
 */
void flash_delay() { delay(LED_FLASH_DELAY); }

/*
 * Flash LED marked SYS.
 */
void flash_sys(int num_flashes) {
  for (int i = 0; i < num_flashes; i++) {
  if (i > 0) flash_delay();
      digitalWrite(LED_SYS, HIGH);
      flash_delay();
      digitalWrite(LED_SYS, LOW);
  }
}

/*
 * Set LED state for SYS.
 */
void set_sys(bool value) {
  digitalWrite(LED_SYS, (value ? HIGH : LOW));
}