#include "constants.h"

/*
 * Settings
 */
#define APP_TITLE "JoyKEY"
#define APP_VERSION "0.2"

#define LED_FLASH_DELAY 100
#define BOOT_MODE_THRESHOLD 1000
#define USB_DEBOUNCE_DELAY 10

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
 *   KEYMAP_KEYMAP_PLATFORMIO - Fire keys compile, upload and open serial 
 *                              terminal (PlatformIO).
 *   KEYMAP_FUNCTIONS         - Function keys F13-F19 (useful when module used
 *                              as a macro keyboard such as a streamdeck).
 * 
 * If you do not like any of these, feel free to modify one of these within
 * the file constants.h - or create your own.
 */
#define KEYMAP_DEFAULT KEYMAP_CURSOR_GAME
