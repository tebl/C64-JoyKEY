# C64 JoyKEY
The *C64 JoyKEY* was born out of the desire to build my own joystick, and after having a look at the various options available I chose to build one using Cherry MX keyboard switches. They are around a dollar per piece, so after getting it all to work properly on my beloved Commodore 64 I looked into using it with a whole selection of vintage computer systems as well. There are two main versions of the *C64 JoyKEY*, the keyboard-variant already described and a board designed for use with Sanwa arcade parts instead.

![Last build](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/last_build.jpg)
![Last arcade](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/last_arcade.jpg)

With options to handle multiple types of systems comes complexity, you'll have to make a few decisions on what you want out of the *C64 JoyKEY*. Do I only want to use it as a joystick replacement on vintage systems, ideally with 2-3 fire buttons where supported? If so, then you won't need the Arduino Pro Micro.

Want to use it on a modern system as a *WASD*-style keyboard or a gamepad, then install it - a common use of these types of devices is as a macro-keyboard or a stream-deck. Note that compared to many similar solutions, the microcontroller is not required for use with any of the vintage systems - the adapters actually follow the original circuit descriptions for controllers used with the actual vintage computers. What that means is that there is truly no chance of lag added by the controller. Ever.

The pictures below show the unit when connected to my Commodore 64, including the jumper settings used with it. As I've tried to keep things as close to the standard usually associated with Atari-style joysticks, there are two joystick connectors - this is because a lot of the Commodore 64 games supported using a second joystick for specific game functions.

![Commodore 64](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/c64_system.jpg)
![C64 Configuration](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/c64_jumpers.jpg)

As with most C64 games port 2 is the one to use, port 1 is just there to connect additional fire buttons. When in doubt, just connect a cable for port 2 and you should have a good time. This was labelled after the way the controller is used on the Commodore 64. 

## Getting one
I won't be selling these, so if you want one you will probably have to build it yourself (or call your favourite friend, ideally someone with a reasonable quality soldering iron). I've created a separate documents on [building](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/building.md) a *C64 JoyKEY*, this is also where you'll find the [BOM](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/building.md#bom) for this project (a list of needed parts and links to where PCBs can be ordered).

* [Building C64 JoyKEY](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/building.md)
* [Building C64 JoyKEY Arcade](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/building_arcade.md)
* [PCBWay shared projects](https://www.pcbway.com/project/shareproject/?tag=C64%20JoyKEY)

As with all things you're soldering together by yourself, the one who soldered it takes responsibility for it. I'll try answer any opened tickets as far as I am able, but know that this is a hobby-grade project and I might be busy on spending the little energy I have on other things (be patient, check out the [schematic](https://github.com/tebl/C64-JoyKEY/tree/main/documentation/schematic) while you wait).

## Setting it up
The *C64 JoyKEY* has a handful of jumpers that need to be set correctly in order to: A - function, B - not destroy your precious vintage computer and/or consoles. The necessary details have been put into a separate [configuration](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/configuration.md)-document, check it out for some information on the systems I've attempted to use the *C64 JoyKEY* with.

* [Configuring C64 JoyKEY](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/configuration.md)
* [Arduino firmware](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/firmware.md)