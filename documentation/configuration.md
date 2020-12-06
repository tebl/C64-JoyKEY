# Configuration
This document details the jumpers physically found on the *C64 JoyKEY*, see document [firmware](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/firmware.md) if you are looking for a description of software settings. Check out the table of contents and jump directly to it if you are looking to use this device with a specific vintage system, note that this will mostly describe settings relevant to the [Default FW](https://github.com/tebl/C64-JoyKEY/blob/main/software/arduino/Joykey/README.md) - the use of the [Autofire FW](https://github.com/tebl/C64-JoyKEY/blob/main/software/arduino/Autofire/README.md) or the USB-mode is described separately.

- [Vintage systems](#vintage-systems)
  - [Commodore 64](#commodore-64)
  - [Commodore 64GS](#commodore-64)
  - [Commodore VIC-20](#commodore-64)
- [Autofire](#autofire)
- [USB-mode](#usb-mode)

## Vintage systems
Quite a lot of vintage computers and consoles support the classic Atari-style type of joystick (female DB9 connector on the end), the *C64 JoyKEY* is a variation of this type of joystick. Where things start to get weird is when everyone started adding two or more additional fire buttons to them, in many cases changing the what those signals are expected to look at. I found [icomp.de](http://wiki.icomp.de/wiki/DB9-Joystick) wiki to be particularly helpful as it includes a comparison for a lot of them, essentially giving an overview over what could be expected to function safely.

For all of these, both **DEFAULT_FW** are expected to be linked/jumpered - the Arduino Pro Micro is not needed when using the *C64 JoyKEY* and you should not disable the failsafe (which assumes Autofire or USB-mode).

### Commodore 64
There are two variants for connecting up the C64 JoyKEY to a Commodore 64, including the GS and VIC-20. Variant A is probably the one you are looking for, it does however require connecting both of the DB9 cables in order to use all three buttons (depending on game support).

- [Commodore 64 (variant A)](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/configuration.md#commodore-64-variant-a)
- [Commodore 64 (variant B)](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/configuration.md#commodore-64-variant-b)

![Commodore 64](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/c64_system.jpg)
![Commodore 64 GS](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/c64gs_system.jpg)

#### Commodore 64 (variant A)
A common way to add a second fire button to the Commodore was simply plugging in another joystick and using the fire button on that, this would be the same as pressing the space bar in many games. On the *C64 JoyKEY* connected up as shown below, that would actually be the third fire button. Fire2 is wired into the SID-chip, meaning that we can use it with games that expect a controller of the type that came with the Commodore 64GS.

![C64 variant A](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/c64_jumpers.jpg)

#### Commodore 64 (variant B)
The Commodore 64 can support two additional fire buttons by connecting up signals to the SID-chip, via the POTX and POTY signals. This variant only required a single cable, but given that I've not seen any titles with support for the third fire-button you might as well just use variant A. Fire button 2 is the same on both variants and it is mostly used with Ocean cartridges and a few modern game releases.

![C64 variant B](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/c64_jumpers_b.jpg)

## Autofire
See [Autofire FW](https://github.com/tebl/C64-JoyKEY/blob/main/software/arduino/Autofire/README.md) for more information on using the device in Autofire-mode, note that it too has a failsafe-mode so you'll need to hold LEFT and RIGHT key on powerup to enable it (that way things are not accidentally activated until you're sure you've set the jumpers correctly). Autofires require that both of the **DEFAULT_FW** pads have **NOT** been linked/jumpered, this ensures that signals aren't also connected directly to your vintage system.

Using the autofire firmware assumes that the system will emulate a single-button joystick connected to a vintage system, the actual FIRE-buttons (FIRE1,2 and 3) will not be directly connected to the system and the Arduino will handle controlling the actual fire button signal sent to the vintage computer system.

![Autofire Configuration](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/autofire_jumpers.jpg)


# USB-mode
The [Default FW](https://github.com/tebl/C64-JoyKEY/blob/main/software/arduino/Joykey/README.md) can be used to connect the computer to a modern-ish computer, the device will present itself as either a keyboard or a joystick depending on the settings used. USB-mode supports all of the keys, but FIRE2/FIRE3 will be disabled unless you set the jumpers to what is shown below. USB-mode does not care about the two DEFAULT_FW jumpers, those just control the behavior when connected to a vintage system.

![USB System](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/usb_system.jpg)

As mentioned in the description for the firmware, there is a failsafe in place so that it will not be automatically activated when the board is connected to a computer over USB (you can change this behavior if you only intend to use it connected over USB). The failsafe is disabled by holding down the LEFT and RIGHT key when plugging in the device - you will have approximately 3 seconds to do this and you should hold them down until the SYS LED lights up.

![Magic combination](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/2020-12-05%2021.04.29.jpg)
![USB Configuration](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/usb_jumpers.jpg)
