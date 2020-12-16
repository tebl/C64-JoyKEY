# C64 JoyKEY

I wanted to try and build a simple joystick using Cherry MX keyboard switches, but since those are on the pricier side I wanted to be able to use it on various different vintage computers and consoles. Then I added an Arduino Pro Micro so that it could be used as a keyboard or joystick over USB on my Windows 10 laptop. A few *"Holy feature creep, Batman!"* moments later it I ended up with something that looks like what is shown below.

![Commodore 64GS](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/c64gs_system.jpg)
![C64 Configuration](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/c64_jumpers.jpg)

With options to handle multiple types of systems comes complexity, you'll have to make a few decisions on what you want out of the *C64 JoyKEY*. Do I only want to use it as a joystick replacement on vintage systems, ideally with 2-3 fire buttons where supported? If so, then you won't need the Arduino Pro Micro. Want to use it on a modern system as a *WASD*-style keyboard or a gamepad, then install it. Also there is an alternate firmware that uses FIRE2/FIRE3 to control rapid fire and autofire instead.

If you're wondering why there are two connectors on the PCB, this is where the *C64*-part of the title comes from - specifically a lot of games have solved the need for more game buttons by having the user either press space bar or the button on a second joystick connected to port 1. As with most C64 games port 2 is the one to use, the first one only connects to the fire button and nothing else. Slightly confusing, but for the most part just connect a cable to port 2 and you'll be happy - if things don't work, move the cable connected on the *C64*-side to the other port.

## Getting one
I won't be selling these, so if you want one you will probably have to build it yourself (or call your favourite friend, ideally someone with a reasonable quality soldering iron). I've created a separate document on [building](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/building.md) a *C64 JoyKEY*, this is also where you'll find the [BOM](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/building.md#bom) for this project (a list of needed parts and links to where PCBs can be ordered).

* [Building C64 JoyKEY](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/building.md)

As with all things you're soldering together by yourself, the one who soldered it takes responsibility for it. I'll try answer any opened tickets as far as I am able, but know that this is a hobby-grade project and I might be busy on spending the little energy I have on other things (be patient, check out the [schematic](https://github.com/tebl/C64-JoyKEY/tree/main/documentation/schematic) while you wait).

## Setting it up
The *C64 JoyKEY* has a handful of jumpers that need to be set correctly in order to: A - function, B - not destroy your precious vintage computer and/or consoles. The necessary details have been put into a separate [configuration](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/configuration.md)-document, check it out for some information on the systems I've attempted to use the *C64 JoyKEY* with.

* [Configuring C64 JoyKEY](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/configuration.md)
* [Arduino firmware](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/firmware.md)