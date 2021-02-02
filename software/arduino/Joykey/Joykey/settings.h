#include "constants.h"

/*
 * Settings
 */
#define APP_TITLE "JoyKEY"
#define APP_VERSION "0.4"

#define LED_PWR_MAX 56                // Maximum brightness
#define LED_SYS_MAX 64                // Maximum brightness
#define LED_SHUTOFF 5000              // Time after boot when fade starts
#define LED_FADE_SPEED 200            // Delay between LED fade steps
#define LED_STEP 8                    // Change per step when fading
#define LED_FLASH_DELAY 100           // Delay between blink steps
#define BOOT_MODE_THRESHOLD 1000      // Time needed before alternate mode
#define USB_DEBOUNCE_DELAY 10         // Debounce delay for keys

/* Controls underglow effects, if available - setting LED_UNDERGLOW_MAX to 0
 * will disable it entirely. Effects are only available in USB-mode, you should
 * only activate one of them. */
#define LED_UNDERGLOW_MAX 32          // Maximum brightness
#define LED_UNDERGLOW_STEP 4          // Change per step when fading.
#define LED_UNDERGLOW_FADE_SPEED 400  // Num ms. between fade out steps
#define LED_UNDERGLOW_MIN 1           // Uncomment to keep underglow above MIN.
//#define UNDERGLOW_EFFECT_BOOST      // Underglow fades in on activity.
#define UNDERGLOW_EFFECT_FLASH        // Underglow goes to max then fades without activity.               

/* This controls the underglow LEDs when in the default mode, this should only
 * be enabled if you know that you can safely power that much from the joystick
 * port of whatever you've connected the C64 JoyKEY to.
 */
//#define DEFAULT_UNDERGLOW 16        // Uncomment to enable, also set brightness

/* Specify KEY_MODE_JOYSTICK to have the alternate mode identify the
 * device as a joystick, alternatively you can use KEY_MODE_USB to have it
 * function as a weird keyboard (see KEY_MAP_DEFAULT below for keymap used). 
 */
#define USB_ALTERNATE_MODE KEY_MODE_USB

/* Uncomment this line to force the alternate mode, this is useful if you only
 * want to use the C64 JoyKEY over USB and do not want to connect it to a
 * vintage system of any kind. The mode used is the one specified by 
 * USB_ALTERNATE_MODE above.
 */
//#define USB_FORCE_ALTERNATE

/* Specify the key mapping to use when setting USB_ALTERNATE_MODE to
 * KEY_MODE_USB (used as a USB keyboard). Valid options are:
 *   KEYMAP_WASD_KEYS         - WASD
 *   KEYMAP_CURSOR_GAME       - Cursor keys
 *   KEYMAP_CURSOR_EDITOR     - Same as above except FIRE1/2/3 is copy/paste/cut
 *   KEYMAP_PLATFORMIO - Fire keys compile, upload and open serial 
 *                              terminal (PlatformIO).
 *   KEYMAP_FUNCTIONS         - Function keys F13-F19 (useful when module used
 *                              as a macro keyboard such as a streamdeck).
 * 
 * If you do not like any of these, feel free to modify one of these within
 * the file constants.h - or create your own.
 */
#define KEYMAP_DEFAULT KEYMAP_CURSOR_GAME
