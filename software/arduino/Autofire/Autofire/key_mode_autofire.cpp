#include <Arduino.h>
#include "constants.h"
#include "key_mode.h"
#include "led_control.h"
#include "settings.h"

extern unsigned long key_debounce[NUM_KEYS];
extern byte key_state[NUM_KEYS];
extern bool key_enabled[NUM_KEYS];

bool autofire = false;
int duty_phase = HIGH;
unsigned long next_change = 0;

void init_mode_autofire() {
  set_sys(true);

  /* FIRE 1 */
  pinMode(KEY_PINS[JOYKEY_FIRE1], INPUT_PULLUP);
  digitalWrite(PIN_FIRE1_OUT, HIGH);
  pinMode(PIN_FIRE1_OUT, OUTPUT);
  key_enabled[JOYKEY_FIRE1] = true;

  /* Verify FIRE2 polarity setting */
  pinMode(PIN_FIRE2_POL, INPUT);
  if (digitalRead(PIN_FIRE2_POL) == LOW) {
    pinMode(KEY_PINS[JOYKEY_FIRE2], INPUT_PULLUP);
    key_enabled[JOYKEY_FIRE2] = true;
  } else key_enabled[JOYKEY_FIRE2] = false;

  /* Verify FIRE3 polarity setting */
  pinMode(PIN_FIRE3_POL, INPUT);
  if (digitalRead(PIN_FIRE3_POL) == LOW) {
    pinMode(KEY_PINS[JOYKEY_FIRE3], INPUT_PULLUP);
    key_enabled[JOYKEY_FIRE3] = true;
  } else key_enabled[JOYKEY_FIRE3] = false;
}

/*
 * Set fire button output. Assumes that the device is connected to a system
 * that expects an active low signal, have the SYS LED follow the output
 * directly.
 */
void set_fire(bool active) {
  #ifdef LINK_FIRE_SYS
  set_sys(active);
  #endif
  digitalWrite(PIN_FIRE1_OUT, (active ? LOW : HIGH));
}

void set_cycle_low(const int period) {
  next_change = millis() + period;
  duty_phase = LOW;
  set_fire(true);
}

void set_cycle_high(const int period) {
  next_change = millis() + period;
  duty_phase = HIGH;
  set_fire(false);
}

void flip_cycle(const int high_period, const int low_period) {
  if (duty_phase == HIGH) set_cycle_low(low_period);
  else set_cycle_high(high_period);
}

/* 
 * Called after debouncing all of the keys, should take care of generating
 * the expected output based on the state of the keys. Note the inherent
 * hierarchy of of fire button sources.
 */
void update_state() {
  if (is_waiting_release(JOYKEY_FIRE1)) {
    set_fire(true);
    return;
  }

  /* FIRE2 Rapid fire */
  if (is_waiting_release(JOYKEY_FIRE2)) {
    if (millis() > next_change) {
      flip_cycle(RAPID_FIRE_PERIOD_HIGH, RAPID_FIRE_PERIOD_LOW);
    }
    return;
  }

  /* Handle autofire */
  if (autofire) {
    if (millis() > next_change) {
      flip_cycle(AUTO_FIRE_PERIOD_HIGH, AUTO_FIRE_PERIOD_LOW);
    }
    return;
  }

  set_fire(false);
}

void toggle_autofire() {
  if (autofire) {
    autofire = false;

    /* Cancel out of low cycle if we aren't doing anything else. */
    if (is_waiting_release(JOYKEY_FIRE1)) return;
    if (is_waiting_release(JOYKEY_FIRE2)) return;
    set_cycle_high(0);
  } else {
    autofire = true;

    /* Start with a low cycle if we're not doing anything else. */
    if (is_waiting_release(JOYKEY_FIRE1)) return;
    if (is_waiting_release(JOYKEY_FIRE2)) return;
    set_cycle_low(AUTO_FIRE_PERIOD_LOW);
  }
}

void press_key(byte key_id) {
  switch (key_id) {
    case JOYKEY_FIRE1:
      break;

    case JOYKEY_FIRE2:
      /* Immediately start a low cycle, but allow fire button to override it */
      if (is_waiting_release(JOYKEY_FIRE1)) return;
      set_cycle_low(AUTO_FIRE_PERIOD_LOW);
      break;

    case JOYKEY_FIRE3:
      toggle_autofire();
      break;
  }
}

void release_key(byte key_id) {
  switch (key_id) {
    case JOYKEY_FIRE2:
      if (autofire) {
        next_change = millis() + AUTO_FIRE_PERIOD_HIGH;
        duty_phase = HIGH;
        set_fire(false);
      }
      break;
  }
}

/*
 * Check the state of the specified key_id, this mainly just updates the state
 * of the keys for later processing.
 */
void debounce_key(byte key_id) {
  if (!key_enabled[key_id]) return;
  if (digitalRead(KEY_PINS[key_id]) == LOW) {
    switch (key_state[key_id]) {
      case KEY_STATE_NEUTRAL:
        if(key_debounce[key_id] == 0) {
          key_debounce[key_id] = millis() + DEBOUNCE_DELAY;
          return;
        }

        if (millis() > key_debounce[key_id]) {
          key_state[key_id] = KEY_STATE_WAIT_RELEASE;
          press_key(key_id);
          return;
        }
        break;
      
      case KEY_STATE_WAIT_RELEASE:
        /* Wait for a high state to release */
      default:
        break;
    }
  } else {
    if (key_state[key_id] != KEY_STATE_NEUTRAL) {
      release_key(key_id);
    }

    key_debounce[key_id] = 0;
    key_state[key_id] = KEY_STATE_NEUTRAL;
  }
}

void handle_mode_autofire() {
  debounce_key(JOYKEY_FIRE1);
  debounce_key(JOYKEY_FIRE2);
  debounce_key(JOYKEY_FIRE3);
  update_state();
}