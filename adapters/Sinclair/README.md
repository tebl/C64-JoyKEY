# JoyKEY (ZX Spectrum +2/+3 and Interface 2)
**UNTESTED**

Back in the days when the ZX Spectrum was still all the rage in Europe, but mostly Britain - the Atari joysticks were available from most computer stores. Given that the ZX Spectrum lacked a dedicated joystick port, Kempston released an interface that allowed gamers to use an Atari-style joystick with their system. Sinclair did not like that, so when they released the ZX Interface 2 as well as the later ZX Spectrum +2/+3 line of computers they chose to include a joystick port with the wires jumbled together so that the Atari-style joysticks wouldn't work with the system with the official devices.

![Sinclair System](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/sinclair_system.jpg)

A lengthy story that mostly just explains why an adapter was needed, in the case of the *C64 JoyKEY* this is the adapter that let's you connect directly to the mentioned systems (ZX Spectrum +2/+3 and Interface 2). This is not needed if the joystick port you are using is on one of the common DivIDE/DivMMC or on a standalone Kempston compatible device.

The completed adapter can be seen below, this also includes the expected position that should be set on the *C64 JoyKEY* device itself. Note that the Sega Master System does not officially have a power pin, so the active parts of the *C64 JoyKEY* will not be powered up.

![Sinclair System Adapter](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/sinclair_adapter.jpg)
![Sinclair System Jumpers](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/sinclair_jumpers.jpg)

# BOM
The parts listed are the ones I've used when building a Sinclair adapter for use with the *C64 JoyKEY*, part listed in parenthesis are considered optional (meaning you could build a more limited version of it). 

| Reference     | Item                                      | Count |
| ------------- | ----------------------------------------- | ----- |
| PCB           | Fabricate using Gerber files ([order]())  |    (1)|
| J1 *          | 2x5 pin straight header pins or 2x5 IDC   |     1 |
| J2 **         | DE-9 Female straight connector            |     1 |

*) Breakable dual row pin headers can be used here, but I find it is nicer to use a 2x5 pin connector here instead. The cable needed is a 2x5 pin IDC cable (usually listed as *AVR* or *JTAG* cable) with sufficient length.

**) These are the blue kind with straight pins, it will include a few metal bits on it - remove those and you'll be left with the mostly blue part needed. Bend the pins slightly and match up with PCB, solder before it has a chance to fall off.