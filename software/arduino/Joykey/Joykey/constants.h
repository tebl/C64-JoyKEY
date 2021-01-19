#ifndef _CONSTANTS_H
#define _CONSTANTS_H
#include "Keyboard.h"

/* 
 * Pin definitions 
 */
#define PIN_FIRE1 2
#define PIN_FIRE1_OUT 5
#define PIN_FIRE2 3
#define PIN_FIRE2_POL 21
#define PIN_FIRE3 4
#define PIN_FIRE3_POL 20
#define PIN_LEFT 14
#define PIN_RIGHT 18
#define PIN_UP 19
#define PIN_DOWN 15
#define LED_KEYS 6
#define LED_PWR 9
#define LED_SYS 10

/* 
 * Definitions
 */
#define KEY_STATE_NEUTRAL 0
#define KEY_STATE_WAIT_RELEASE 1

#define JOYKEY_UP 0
#define JOYKEY_DOWN 1
#define JOYKEY_LEFT 2
#define JOYKEY_RIGHT 3
#define JOYKEY_FIRE1 4
#define JOYKEY_FIRE2 5
#define JOYKEY_FIRE3 6

#define NUM_KEYS 7
const int KEY_PINS[NUM_KEYS] = { PIN_UP, PIN_DOWN, PIN_LEFT, PIN_RIGHT, PIN_FIRE1, PIN_FIRE2, PIN_FIRE3 };

#define KEY_MODE_DEFAULT 0
#define KEY_MODE_USB 1
#define KEY_MODE_JOYSTICK 2

#define KEYMAP_WASD 0
#define KEYMAP_CURSOR_GAME 1
#define KEYMAP_CURSOR_EDITOR 2
#define KEYMAP_PLATFORMIO 3
#define KEYMAP_FUNCTIONS 4

#define MACRO_NOTHING 1000
#define MACRO_COPY 1001
#define MACRO_CUT 1002
#define MACRO_PASTE 1003
#define MACRO_UNDO 1004
#define MACRO_REDO 1005
#define MACRO_PLATFORMIO_BUILD 1006
#define MACRO_PLATFORMIO_UPLOAD 1007
#define MACRO_PLATFORMIO_SERIAL 1008
const unsigned int KEYCODES_WASD[NUM_KEYS] = {          'W',          'S',            'A',            'D',             'Q',                    'E',                     'R' };
const unsigned int KEYCODES_CURSOR_GAME[NUM_KEYS] = {   KEY_UP_ARROW, KEY_DOWN_ARROW, KEY_LEFT_ARROW, KEY_RIGHT_ARROW, 'Q',                    'E',                     'R' };
const unsigned int KEYCODES_CURSOR_EDITOR[NUM_KEYS] = { KEY_UP_ARROW, KEY_DOWN_ARROW, KEY_LEFT_ARROW, KEY_RIGHT_ARROW, MACRO_COPY,             MACRO_PASTE,             MACRO_CUT };
const unsigned int KEYCODES_PLATFORMIO[NUM_KEYS] = {    KEY_UP_ARROW, KEY_DOWN_ARROW, KEY_LEFT_ARROW, KEY_RIGHT_ARROW, MACRO_PLATFORMIO_BUILD, MACRO_PLATFORMIO_UPLOAD, MACRO_PLATFORMIO_SERIAL };
const unsigned int KEYCODES_FUNCTIONS[NUM_KEYS] = {     KEY_F13,      KEY_F14,        KEY_F15,        KEY_F16,         KEY_F17,                KEY_F18,                 KEY_F19 };
#endif