# JoyKEY (Atari 7800)

In the age of the Commmodore 64, Atari decided that it was a good idea to put together a console without audio quality that would only rise to the level of competing with the almighty ZX Spectrum. Then they launched them with horrible controllers that fell part on the way home from the store. Here in Europe, we also got treated to a gamepad-like controller that can only be described as an implement created by someone who only have had the concept just barely described to them over the phone - yet, we still got the feeling that that someone did not see the point of spending more than 5 minutes on games.

![Atari 7800 Pro System](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/a7800_system.jpg)

Enough about all that, I actually have more than one of the consoles - somehow I sort of like playing on them, I just can't use any of their controllers. I've previously made an adapter so that I can use Sega Mega Drive controllers with the console, but since I've built the *C64 JoyKEY* I wanted to use it on that as well (which is the reason for this adapter).

The completed adapter can be seen below, this also includes the expected position that should be set on the *C64 JoyKEY* device itself.

![Atari 7800 Adapter](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/a7800_adapter.jpg)
![Atari 7800 Jumpers](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/a7800_jumpers.jpg)

# BOM
The parts listed are the ones I've used when building an Atari 7800 controller adapter for the *C64 JoyKEY*, part listed in parenthesis are considered optional (meaning you could build a more limited version of it). 

| Reference     | Item                                      | Count | Order   |
| ------------- | ----------------------------------------- | ----- | ------- |
| PCB           | Fabricate using Gerber files              |    (1)| [PCBway](https://www.pcbway.com/project/shareproject/C64_JoyKEY__Atari_7800_adapter_.html)
| J1 *          | 2x5 pin straight header pins or 2x5 IDC   |     1 |
| J2 **         | DE-9 Female straight connector            |     1 |
| JP1,JP2 ***   | 3-pin breakable header pins (w/jumpers    |    (2)|
| Q1,Q2         | 2N3906 transistor (TO-92)                 |     2 |
| R1,R3         | 620 ohm resistor                          |     2 |
| R2,R4         | 1k ohm resistor                           |     2 |

*) Breakable dual row pin headers can be used here, but I find it is nicer to use a 2x5 pin connector here instead. The cable needed is a 2x5 pin IDC cable (usually listed as *AVR* or *JTAG* cable) with sufficient length.

**) These are the blue kind with straight pins, it will include a few metal bits on it - remove those and you'll be left with the mostly blue part needed. Bend the pins slightly and match up with PCB, solder before it has a chance to fall off.
