#include "constants.h"

/*
 * Settings
 */
#define APP_TITLE "JoyKEY Autofire"
#define APP_VERSION "0.4"

#define LED_PWR_MAX 56                // Maximum brightness
#define LED_SYS_MAX 64                // Maximum brightness
#define LED_SHUTOFF 5000              // Time after boot when fade starts
#define LED_FADE_SPEED 200            // Delay between LED fade steps
#define LED_STEP 8                    // Change per step when fading
#define LED_FLASH_DELAY 100           // Delay between blink steps
#define BOOT_MODE_THRESHOLD 1000      // Time needed before alternate mode
#define DEBOUNCE_DELAY 10             // Debounce delay for keys
#define LED_DISABLE_RX_TX             // Disable RX/TX LEDs on Arduino

/* Controls underglow effects, if available - setting LED_UNDERGLOW_MAX to 0
 * will disable it entirely. 
 */
#define LED_UNDERGLOW_MAX 0           // Maximum brightness
#define LED_UNDERGLOW_STEP 8          // Change per step when fading.
#define LED_UNDERGLOW_FADE_SPEED 500  // Num ms. between fade out steps

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

/* Uncomment this line to force the alternate mode, meaning that the magic
 * key combination requirement on startup is removed completely.
 */
//#define FORCE_ALTERNATE

/* The SYS LED will ordinarily reflect the status of the fire key, this gives
 * the user some feedback on frequency used on autofire and rapid fire modes.
 * Comment out this line when that starts to get irritating.
 */
#define LINK_FIRE_SYS

/* These numbers tune the time autofire and rapid fire spend in each of the
 * phases, meaning they specify how much time the fire button is held in and
 * how much time until it is released again. Higher number means slower.
 */
#define AUTO_FIRE_PERIOD_LOW 80
#define AUTO_FIRE_PERIOD_HIGH 80
#define RAPID_FIRE_PERIOD_LOW 60
#define RAPID_FIRE_PERIOD_HIGH 60