#include <Arduino.h>
#include "constants.h"
#include "settings.h"

int current_pwr = LED_PWR_MAX;
int current_sys = LED_SYS_MAX;
int current_underglow = LED_UNDERGLOW_MAX;

/* Effectively sets the brightness of the LED marked PWR. */
void set_pwr(int value) {
  current_pwr = value;
  analogWrite(PIN_PWR, value);
}

/* Fade out the power LED, dims gradually with each call to the function. */
void fade_pwr() {
  if (current_pwr > LED_OFF) {
    current_pwr -= 8;
    if (current_pwr < LED_OFF) current_pwr = LED_OFF;
  }
  set_pwr(current_pwr);
}

/* Effectively sets the brightness of the LED marked SYS. */
void set_sys(int value) {
  current_sys = value;
  analogWrite(PIN_SYS, value);
}

/* Set LED state for SYS. */
void set_sys(bool value) {
  set_sys(value ? LED_SYS_MAX : LED_OFF);
}

/* Fade out the power LED, dims gradually with each call to the function. */
void fade_sys() {
  if (current_sys > LED_OFF) {
    current_sys -= 8;
    if (current_sys < LED_OFF) current_sys = LED_OFF;
  }
  set_sys(current_sys);
}

/* Effectively sets the brightness of the LED marked SYS. */
void set_underglow(int value) {
  current_underglow = value;
  analogWrite(PIN_UNDERGLOW, value);
}

void init_led() {
  pinMode(PIN_PWR, OUTPUT);
  set_pwr(LED_PWR_MAX);

  pinMode(PIN_SYS, OUTPUT);
  set_sys(LED_OFF);

  pinMode(PIN_UNDERGLOW, OUTPUT);
  set_underglow(LED_UNDERGLOW_MAX);
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
      digitalWrite(PIN_SYS, HIGH);
      flash_delay();
      digitalWrite(PIN_SYS, LOW);
  }
}