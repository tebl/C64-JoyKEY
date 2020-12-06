# C64 JoyKEY (Autofire)
While the board itself was envisioned as a joystick replacement, I didn't want to do a one off for something that requires Cherry MX switches - so I added an Arduino Pro Micro board! This section of the repository is dedicated to the software created for said device in order to add rapid fire and autofire functionality to it (the Autofire FW emulates what to the computer would appear to be an Atari-style single-button joystick). If you were looking for the [Default FW](https://github.com/tebl/C64-JoyKEY/tree/main/software/arduino/Joykey), because you either wanted something that would function over USB then this is not the firmware you were looking for (this would also match the multi-key [configurations](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/configuration.md), even without an Arduino Pro Micro installed).

Note that the Arduino is expected to control all of the fire buttons, so in you should make sure that this is not attempted when either of the two **DEFAULT_FW** links/jumpers are in place. The remaining jumpers need to be set according to the picture seen below. There is an inherent hierarchy to the way fire buttons, FIRE1 taking precedence over FIRE2, FIRE2 over FIRE3 and so on depending on the settings used. In the current version FIRE1 will act as the normal fire button, FIRE2 toggles the fire button as long as it is held (rapid fire) while FIRE3 toggles autofire on/off. 

![Autofire configuration](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/autofire_jumpers.jpg)

## Failsafe
I've added a failsafe to the Arduino code so that it doesn't automatically start up and do something that could be harmful to a vintage computer connected via any of the DB9 cables, things it needs to do if you are primarily using it as a USB-device (keyboard or gamepad). This is meant as a way to force **YOU** (and mostly me) to actively think about what you are connecting and where, it also saves you in case you accidentally power up the wrong thing.

Supported systems and the jumpering expected when working with them have been added to the [configuration](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/configuration.md) - ensure you have the correct settings. When you have verified things, the failsafe can be disabled by holding down the LEFT and RIGHT key when plugging in the device. When successful, the SYS LED will then be lit and then stay on. You have 3 seconds to do this.

![Magic combination](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/2020-12-05%2021.04.29.jpg)

## Settings
The Arduino sketch have some configurable options, you'll need to edit the file named **settings.h**. Note that you'll have to recompile and upload the new version of the firmware every time you make changes to it.

If you want to use the device as a vintage controller with rapidfire/autofire without having to deal with holding whole failsafe situation, you can force it into this mode by using **FORCE_ALTERNATE** (remove the two slashes in front of it).
```
#define FORCE_ALTERNATE
```