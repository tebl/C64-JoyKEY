# JoyKEY (MSX)

**UNTESTED**

The MSX-line of computers generally tried to be everything for everyone, as long as they wanted an 8bit computers. This meant a lot of different features going into it, including the surprisingly complicated joystick ports - designed to fit just about any device as long as it conformed to their very specific standard. Which means that it works with the standard Atari-style joystick, but if you want a second fire button or something that'd work reliable for joysticks requiring power you'll need an adapter in between. I was tempted to make this a more general adapter, but I couldn't point you to a specific joystick that'd work with it - unless you build it yourself, of course.

![MSX System Adapter](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/msx_adapter.jpg)
![MSX System Jumpers](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/msx_jumpers.jpg)

# BOM
The parts listed are the ones I've used when building a MSX adapter for use with the *C64 JoyKEY*, part listed in parenthesis are considered optional (meaning you could build a more limited version of it). 

| Reference     | Item                                      | Count | Order   |
| ------------- | ----------------------------------------- | ----- | ------- |
| PCB           | Fabricate using Gerber files              |    (1)| PCBway
| J1 *          | 2x5 pin straight header pins or 2x5 IDC   |     1 |
| J2 **         | DE-9 Female straight connector            |     1 |

*) Breakable dual row pin headers can be used here, but I find it is nicer to use a 2x5 pin connector here instead. The cable needed is a 2x5 pin IDC cable (usually listed as *AVR* or *JTAG* cable) with sufficient length.

**) These are the blue kind with straight pins, it will include a few metal bits on it - you'll need to do a test-fitting on your particular build of the MSX to determine if it can be left in place. If it feels like it'll break the socket, then you can remove the metal parts.