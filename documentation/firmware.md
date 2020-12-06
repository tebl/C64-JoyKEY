# Firmware
The *C64 JoyKEY* does not actually need to have an Arduino Pro Micro installed unless you specifically want the functionality provided by it, either because you want to be able to use it as a keyboard/joystick with a modern computer over USB (this is provided by the standard firmware). The alternate autofire-firmware uses the Arduino as a programmable autofire unit, in this mode the controller acts as a standard Atari-style joystick with a single fire button (except we have an AVR that can press the button faster than we possibly can).

![JoyKEY USB](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/2020-12-04%2002.27.40.jpg)

## Firmware selection
As already mentioned, the firmware options listed below can be used. Note that as mentioned when [building](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/building.md#soldering-it-together) the unit, there is a couple of links marked **DEFAULT_FW** that must be set according to your selection.
- [Default FW](https://github.com/tebl/C64-JoyKEY/tree/main/software/arduino/Joykey)
- [Autofire FW](https://github.com/tebl/C64-JoyKEY/blob/main/software/arduino/Autofire/)

## Installing the firmware
Installation of the firmware would normally include compiling the code via either *Arduino Studio* or using the development environment I'm using these days - *PlatformIO*. Unless you want to do any coding, then whichever you already have installed should do what you need it to do.

Most of the fireware options require at least a couple of additional libraries that probably wouldn't come with a standard installation, so you'll need to add them manually if you are using *Arduino Studio* (*PlatformIO* will install them automatically for you) - see below for some more details.

For more specifics on the firmware, follow the links from the [Firmware selection](#firmware-selection) section. One thing worth mentioning is that the firmware will have a failsafe mode, the reason for this is that some combinations may be considered harmful to vintage computers connected unless you actively pay attention to what you are doing. The unit will start up only when the LEFT and RIGHT key is held down just after it is powered on, the SYS LED will come on to show you that the unit is now enabled.

![Magic combination](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/2020-12-05%2021.04.29.jpg)

### Arduino Studio
For assistance on getting going with the Pro Micro on common tasks such as uploading code and communicating with the module, I found the drivers guides on [learn.sparkfun.com](https://learn.sparkfun.com/tutorials/pro-micro--fio-v3-hookup-guide#hardware-overview-pro-micro) to be of great help (the board I purchased and used for the project was a DIY MORE Arduino Pro Micro). The following is what I have selected as board type, make sure that you pick the one that corresponds to your module - the Pro Micro will have to be manually reset using the reset switch if you run into problems.

![Arduino board configuration](https://github.com/tebl/C64-JoyKEY/raw/main/software/arduino/Joykey/arduino_settings.png))

The project requires some additional library from what usually comes with the default installation of *Arduino Studio*. The first one is called Keyboard, you'll find it by searching for it via *Manage libraries* from the *Tools*-menu and you can install it from there. The second libray is [ArduinoJoystickLibrary](https://github.com/MHeironimus/ArduinoJoystickLibrary), you'll have to download and install that one according to the  [installation-instructions](https://github.com/MHeironimus/ArduinoJoystickLibrary#installation-instructions) provided by the author.