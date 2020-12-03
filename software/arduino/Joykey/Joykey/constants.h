#include "Keyboard.h"

/* Settings */
#define APP_TITLE "JoyKEY"
#define APP_VERSION "0.1"
#define LED_FLASH_DELAY 100
#define BOOT_MODE_THRESHOLD 1000
#define USB_DEBOUNCE_DELAY 10
#define USB_REPEAT_DELAY 200

/* Pin definitions */
#define PIN_FIRE1 2
#define PIN_FIRE1_OUT 5

#define PIN_FIRE2 3
#define PIN_FIRE2_POL 6

#define PIN_FIRE3 4
#define PIN_FIRE3_POL 7

#define PIN_LEFT 10
#define PIN_RIGHT 14
#define PIN_UP 15
#define PIN_DOWN 16

#define LED_PWR 9
#define LED_PWR_MAX 56
#define LED_SYS 19

/* Definitions */
#define KEY_MODE_DEFAULT 0
#define KEY_MODE_USB 1

#define JOYKEY_UP 0
#define JOYKEY_DOWN 1
#define JOYKEY_LEFT 2
#define JOYKEY_RIGHT 3
#define JOYKEY_FIRE1 4
#define JOYKEY_FIRE2 5
#define JOYKEY_FIRE3 6
#define NUM_KEYS 7

#define KEY_STATE_NEUTRAL 0
#define KEY_STATE_WAIT_RELEASE 1

#define KEY_MAP_WASD 0
#define KEY_MAP_CURSOR 1
#define KEY_MAP_DEFAULT KEY_MAP_CURSOR
const int KEY_PINS[NUM_KEYS] = { PIN_UP, PIN_DOWN, PIN_LEFT, PIN_RIGHT, PIN_FIRE1, PIN_FIRE2, PIN_FIRE3 };
const uint8_t KEY_MAP_WASD_KEYS[NUM_KEYS] = { 'W', 'S', 'A', 'D', ' ', 'Q', 'E' };
const uint8_t KEY_MAP_CURSOR_KEYS[NUM_KEYS] = { KEY_UP_ARROW, KEY_DOWN_ARROW, KEY_LEFT_ARROW, KEY_RIGHT_ARROW, ' ', 'Q', 'E' };