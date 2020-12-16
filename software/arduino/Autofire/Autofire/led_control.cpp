#include <Arduino.h>
#include "constants.h"
#include "settings.h"

/* Effectively sets the brightness of the LED marked PWR. */
int current_pwr = LED_PWR_MAX;
void set_pwr(int value) {
  current_pwr = value;
  analogWrite(LED_PWR, value);
}

/* Fade out the power LED, dims gradually with each call to the function. */
void fade_pwr() {
  if (current_pwr > 0) {
    current_pwr -= 8;
    if (current_pwr < 0) current_pwr = 0;
  }
  set_pwr(current_pwr);
}

/* Set LED state for SYS. */
void set_sys(bool value) {
  digitalWrite(LED_SYS, (value ? HIGH : LOW));
}

void init_led() {
  pinMode(LED_PWR, OUTPUT);
  set_pwr(LED_PWR_MAX);

  digitalWrite(LED_SYS, LOW);
  pinMode(LED_SYS, OUTPUT);
}

/* Delay used when spacing out user feedback. Note that this is a blocking
 * function, so it'll probably not be much use when we want to respond to
 * keypresses in due time. 
 */
void flash_delay() { delay(LED_FLASH_DELAY); }

/* Flash LED marked SYS. */
void flash_sys(int num_flashes) {
  for (int i = 0; i < num_flashes; i++) {
  if (i > 0) flash_delay();
      digitalWrite(LED_SYS, HIGH);
      flash_delay();
      digitalWrite(LED_SYS, LOW);
  }
}