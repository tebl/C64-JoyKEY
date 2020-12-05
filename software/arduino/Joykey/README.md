# C64 JoyKEY
While the board itself was envisioned as a simple joystick replacement, I didn't want to do a one off for something that requires Cherry MX switches - so I added an Arduino Pro Micro board! This section of the repository is dedicated to the software created for said device in order to have the board act as a standard USB-keyboard, but note that if you don't want to use it that way there's no need to install those components as it'll work all by itself on most retro computers or consoles (just remember to link both **DEFAULT_FW** links).

## Failsafe
I've added a failsafe to the Arduino code so that it doesn't automatically start up and do something that could be harmful to a vintage computer connected via any of the DB9 cables, things it needs to do if you are primarily using it as a USB-device (keyboard or gamepad). This is meant as a way to force **YOU** (and mostly me) to actively think about what you are connecting and where, it also saves you in case you accidentally power up the wrong thing.

Supported systems and the jumpering expected when working with them have been added to the [configuration](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/configuration.md) - ensure you have the correct settings. When you have verified things, the failsafe can be disabled by holding down the LEFT and RIGHT key when plugging in the device. When successful, the SYS LED will then be lit and then stay on. You have 3 seconds to do this.

## Settings
The Arduino sketch have some configurable options, you'll need to edit the file named **settings.h**. Note that you'll have to recompile and upload the new version of the firmware every time you make changes to it.

The sketch includes a couple of alternate modes for USB, one that's a WASD-style keyboard (*KEY_MODE_USB*) and another that will have the device identify as a joystick (*KEY_MODE_JOYSTICK*). You'll have to change **USB_ALTERNATE_MODE** definition in *settings.h* to match whichever you would like to use.

```
#define USB_ALTERNATE_MODE KEY_MODE_USB
```

If you don't want to use the *C64 JoyKEY* with any vintage computer, meaning you'll only be using the board in USB-mode then you might want to disable the failsafe completely - this can be done by uncommenting the line defining **USB_FORCE_ALTERNATE** (remove the two slashes in front of it).
```
#define USB_FORCE_ALTERNATE
```