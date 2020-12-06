#include "constants.h"

/*
 * Settings
 */
#define APP_TITLE "JoyKEY Autofire"
#define APP_VERSION "0.1"

#define LED_FLASH_DELAY 100
#define DEBOUNCE_DELAY 10

/* Specifies the minimum hold time of the magic key-combination to enable
 * alternate mode. BOOT_DELAY specifies the length of the pause given the
 * user to release the key combination.
 */
#define BOOT_MODE_THRESHOLD 1000
#define BOOT_DELAY 1000

/* Specify KEY_MODE_JOYSTICK to have the alternate mode activate the autofire
 * function.
 */
#define ALTERNATE_MODE KEY_MODE_AUTOFIRE

/* Uncomment this line to force the alternate mode.
 */
#define FORCE_ALTERNATE

#define AUTO_FIRE_PERIOD_LOW 500
#define AUTO_FIRE_PERIOD_HIGH 500
#define RAPID_FIRE_PERIOD_LOW 200
#define RAPID_FIRE_PERIOD_HIGH 200