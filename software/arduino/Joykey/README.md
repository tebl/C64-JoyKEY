# C64 JoyKEY

While the board itself was envisioned as a simple joystick replacement, I didn't want to do a one off for something that requires Cherry MX switches - so I added an Arduino Pro Micro board! This section of the repository is dedicated to the software created for said device in order to have the board act as a standard USB-keyboard, but note that if you don't want to use it that way there's no need to install those components as it'll work all by itself on most retro computers or consoles.

I'm doing most of the development these days using *PlatformIO* in order to make things a bit easier on myself, but as I know most users won't have anything more than the standard Arduino studio I've tried to keep things compatible - you'll find the expected Arduino-sketch (*.ino*-file in the Joykey subfolder). *PlatformIO* should be able to figure out most things automatically, but see below for details on setting up *Arduino Studio*.

## Arduino Studio
For assistance on getting going with the Pro Micro on common tasks such as uploading code and communicating with the module, I found the drivers guides on [learn.sparkfun.com](https://learn.sparkfun.com/tutorials/pro-micro--fio-v3-hookup-guide#hardware-overview-pro-micro) to be of great help (the board I purchased and used for the project was a DIY MORE Arduino Pro Micro). The following is what I have selected as board type, make sure that you pick the one that corresponds to your module as Pro Micro will have to be reset using the module if you have problems.

![Arduino board configuration](![Arduino board configuration](https://github.com/tebl/C64-JoyKEY/raw/master/software/arduino/Joykey/arduino_settings.png))

The project requires an additional library from what usually comes with the default installation of *Arduino Studio*, it's called Keyboard and it should be installed to the libraries folder on your computer. It can be installed manually, but the easiest way is using *Manage libraries* from *Tools* and installing it from there.