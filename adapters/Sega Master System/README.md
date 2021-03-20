# JoyKEY (Sega Master System)

The gamepad for the Sega Master System is mostly compatible with the Atari-style joystick, but as people regularly did during those day - they came up with an entirely different variation when it came to adding the secondary fire-button. The *C64 JoyKEY*, as the name directly implies, has been wired for the Commodore 64, when using it with the Sega Master System we need to change some of the wireing in order to make it all work. You could quite possibly just create a cable doing this for you for the necessary details), but since I hate soldering connectors I put together a small adapter board (just plug a 2x5 pin IDC cable in between the adapter and JoyKEY port 2).

![Sega Master System](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/sms_system.jpg)

The completed adapter can be seen below, this also includes the expected position that should be set on the *C64 JoyKEY* device itself. Note that the Sega Master System does not officially have a power pin, so the active parts of the *C64 JoyKEY* will not be powered up.

![Sega Master System Adapter](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/sms_adapter.jpg)
![Sega Master System Jumpers](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/sms_jumpers.jpg)

# BOM
The parts listed are the ones I've used when building a Sega Master System controller adapter for the *C64 JoyKEY*, part listed in parenthesis are considered optional (meaning you could build a more limited version of it). 

| Reference     | Item                                      | Count | Order  |
| ------------- | ----------------------------------------- | ----- | ------ |
| PCB           | Fabricate using Gerber files              |    (1)| [PCBway](https://www.pcbway.com/project/shareproject/C64_JoyKEY__Sega_Master_System_adapter_.html)
| J1 *          | 2x5 pin straight header pins or 2x5 IDC   |     1 |
| J2 **         | DE-9 Female straight connector            |     1 |
| JP1,JP2 ***   | 3-pin breakable header pins (w/jumpers    |    (2)|

*) Breakable dual row pin headers can be used here, but I find it is nicer to use a 2x5 pin connector here instead. The cable needed is a 2x5 pin IDC cable (usually listed as *AVR* or *JTAG* cable) with sufficient length.

**) These are the blue kind with straight pins, it will include a few metal bits on it - remove those and you'll be left with the mostly blue part needed. Bend the pins slightly and match up with PCB, solder before it has a chance to fall off.

***) Can be replace with small pieces of wire if you do not want the ability to swap FIRE1 and FIRE2.

****) There is no more notices than three, I just wanted to see if I could write as many as there are parts on the actual PCB.