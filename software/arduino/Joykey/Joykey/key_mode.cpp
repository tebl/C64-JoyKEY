#include <Arduino.h>
#include "constants.h"
#include "settings.h"
#include "key_mode_default.h"
#include "key_mode_joystick.h"
#include "key_mode_usb.h"
#include "led_control.h"

extern bool boot_done;
int joykey_mode = KEY_MODE_DEFAULT;

unsigned long sys_shutoff = 0;
unsigned long underglow_timer = 0;
unsigned long key_debounce[NUM_KEYS];
byte key_state[NUM_KEYS];
bool key_enabled[NUM_KEYS];

void set_sys_shutoff() {
  set_sys(true);
  sys_shutoff = millis() + LED_SHUTOFF;
}

void set_underglow_shutoff() {
  set_underglow(LED_UNDERGLOW_MAX);
  underglow_timer = millis() + LED_SHUTOFF;
}

void set_underglow_timer(const int now_delta) {
  underglow_timer = millis() + now_delta;
}

bool init_mode(byte mode) {
  joykey_mode = mode;
  boot_done = true;
  switch (mode) {
    case KEY_MODE_USB:
      set_sys_shutoff();
      set_underglow_shutoff();
      init_mode_usb();
      break;

    case KEY_MODE_JOYSTICK:
      set_sys_shutoff();
      set_underglow_shutoff();
      init_mode_joystick();
      break;
    
    case KEY_MODE_DEFAULT:
    default:
      init_mode_default();
      break;
  }
  return true;
}

bool is_waiting_release(byte key_id) {
  return key_state[key_id] == KEY_STATE_WAIT_RELEASE;
}

void handle_sys() {
  /* Shut off SYS after 5 seconds */
  if (sys_shutoff > 0 && millis() > sys_shutoff) {
    if (is_sys_on()) {
      fade_sys();
      sys_shutoff = millis() + LED_FADE_SPEED;
    } else sys_shutoff = 0;
  }
}

void handle_underglow() {
  #if defined(UNDERGLOW_EFFECT_BOOST) || defined(UNDERGLOW_EFFECT_FLASH)
  if (millis() > underglow_timer) {
    #ifdef LED_UNDERGLOW_MIN
    fade_underglow(LED_UNDERGLOW_MIN);
    #else
    fade_underglow();
    #endif
    underglow_timer = millis() + LED_UNDERGLOW_FADE_SPEED;
  }
  #endif
}

/* Boost key underglow to show activity, update timer with new delay 
 * to keep it from instantly reducing intensity again.
 */
void handle_on_activity() {
  set_sys(true);
  sys_shutoff = millis() + LED_FADE_SPEED;

  #if defined(UNDERGLOW_EFFECT_BOOST) || defined(UNDERGLOW_EFFECT_FLASH)
    #if defined(UNDERGLOW_EFFECT_BOOST)
      boost_underglow();
      set_underglow_timer(LED_UNDERGLOW_FADE_SPEED);
    #elif defined(UNDERGLOW_EFFECT_FLASH)
      set_underglow(LED_UNDERGLOW_MAX);
      set_underglow_timer(LED_UNDERGLOW_FADE_SPEED);
    #endif
  #endif
}

void handle_mode() {
  switch (joykey_mode) {
    case KEY_MODE_USB:
      handle_sys();
      handle_underglow();
      handle_mode_usb();
      break;

    case KEY_MODE_JOYSTICK:
      handle_sys();
      handle_underglow();
      handle_mode_joystick();
      break;
    
    case KEY_MODE_DEFAULT:
    default:
      handle_mode_default();
      break;
  }
}