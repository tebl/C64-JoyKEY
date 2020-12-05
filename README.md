# C64 JoyKEY

I wanted to try and build a simple joystick using Cherry MX keyboard switches, but since those are on the pricier side I wanted to be able to use it on various different vintage computers and consoles. Then I added an Arduino Pro Micro so that it could be used as a keyboard or joystick over USB on my Windows 10 laptop. A few *"Holy feature creep, Batman!"* moments later it I ended up with something that looks like what is shown below.

![Commodore 64GS](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/c64gs_system.jpg)
![C64 Configuration](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/c64_jumpers.jpg)

With options to handle multiple types of systems comes complexity, you'll have to make a few decisions on what you want out of the C64 JoyKEY. Do I only want to use it as a joystick replacement on vintage systems, ideally with 2-3 fire buttons where supported? If so, then you won't need the Arduino Pro Micro. Want to use it on a modern system as a WASD-style keyboard or a gamepad, then install it. Also there'll be an alternate firmware that uses FIRE2/FIRE3 to handle autofire instead. 

## Getting one
I won't be selling these, so if you want one you will probably have to build it yourself (or call your favourite friend, ideally someone with a reasonable quality soldering iron). I've created a separate document on [building](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/building.md) a *C64 JoyKEY*, this is also where you'll find the [BOM](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/building.md#bom) for this project (a list of needed parts and links to where PCBs can be ordered).

* [Building C64 JoyKEY](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/building.md)

## Setting it up
The *C64 JoyKEY* has a handful of jumpers that need to be set correctly in order to: A - function, B - not destroy your precious vintage computer and/or consoles. The necessary details have been put into a separate [configuration](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/configuration.md)-document, check it out for some information on the systems I've attempted to use the *C64 JoyKEY* with.

* [Configuring C64 JoyKEY](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/configuration.md)