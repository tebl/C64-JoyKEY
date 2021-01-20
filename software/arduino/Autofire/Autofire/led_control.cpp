#include <Arduino.h>
#include "constants.h"
#include "settings.h"

#define LED_INDEX_PWR 0
#define LED_INDEX_SYS 1
#define LED_INDEX_UNDERGLOW 2

int current_pwr = LED_PWR_MAX;
int current_sys = LED_SYS_MAX;
int current_underglow = LED_UNDERGLOW_MAX;

int led_values[] = { LED_PWR_MAX, LED_SYS_MAX, LED_UNDERGLOW_MAX };
const int led_max[] = { LED_PWR_MAX, LED_SYS_MAX, LED_UNDERGLOW_MAX };
const int led_pins[] = { PIN_PWR, PIN_SYS, PIN_UNDERGLOW }; 

/* Updates the LED as indicated by the index. Values will be forced within
 * 0 and max_value, making things a bit easier in other code. 
 */
void set_led(const int index, int value) {
  if (value < LED_OFF) value = LED_OFF;
  if (value > led_max[index]) value = led_max[index];

  led_values[index] = value;
  analogWrite(led_pins[index], value);
}

/* Set LED state, this just toggles between full value and completely off. */
void set_led(const int index, const bool value) {
  set_led(index, (value ? led_max[index] : LED_OFF));
}

/* Fades out the LED indicated using index. */
void fade_led(const int index) {
  if (led_values[index] == LED_OFF) return;
  set_led(index, led_values[index] - 8);
}

/* Delay used when spacing out user feedback. Note that this is a blocking
 * function, so it'll probably not be much use when we want to respond to
 * keypresses in due time. */
void flash_delay() { delay(LED_FLASH_DELAY); }

void flash_led(const int index, const int num_flashes) {
  for (int i = 0; i < num_flashes; i++) {
  if (i > 0) flash_delay();
      set_led(index, true);
      flash_delay();
      set_led(index, false);
  }
}

void set_pwr(int value) { set_led(LED_INDEX_PWR, value); }
void set_pwr(bool value) { set_led(LED_INDEX_SYS, value); }
void fade_pwr() { fade_led(LED_INDEX_PWR); }
void flash_pwr(int num_flashes) { flash_led(LED_INDEX_PWR, num_flashes); }
void set_sys(int value) { set_led(LED_INDEX_SYS, value); }
void set_sys(bool value) { set_led(LED_INDEX_SYS, value); }
void fade_sys() { fade_led(LED_INDEX_SYS); }
void flash_sys(int num_flashes) { flash_led(LED_INDEX_SYS, num_flashes); }
void set_underglow(int value) { set_led(LED_INDEX_UNDERGLOW, value); }
void set_underglow(bool value) { set_led(LED_INDEX_UNDERGLOW, value); }
void fade_underglow() { fade_led(LED_INDEX_UNDERGLOW); }
void flash_underglow(int num_flashes) { flash_led(LED_INDEX_UNDERGLOW, num_flashes); }

void init_led() {
  pinMode(PIN_PWR, OUTPUT);
  set_pwr(true);

  pinMode(PIN_SYS, OUTPUT);
  set_sys(LED_OFF);

  pinMode(PIN_UNDERGLOW, OUTPUT);
  set_underglow(LED_UNDERGLOW_MAX);
}