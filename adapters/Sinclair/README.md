# JoyKEY (ZX Spectrum +2/+3 and Interface 2)
Back in the days when the ZX Spectrum was still all the rage in Europe, but mostly Britain - the Atari joysticks were available from most computer stores. Given that the ZX Spectrum lacked a dedicated joystick port, Kempston released an interface that allowed gamers to use an Atari-style joystick with their system. Sinclair did not like that, so when they released the ZX Interface 2 as well as the later ZX Spectrum +2/+3 line of computers they chose to include a joystick port with the wires jumbled together so that the Atari-style joysticks wouldn't work with the system with the official devices.

![Sinclair System](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/sinclair_system.jpg)
![Sinclair System](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/sinclair_system_db9.jpg)

A lengthy story that mostly just explains why an adapter is needed, in the case of the *C64 JoyKEY* this an adapter that let's you connect directly to the mentioned systems (ZX Spectrum +2/+3 and Sinclair Interface 2 expansion). This is not needed if the joystick port you are using is on one of the common DivIDE/DivMMC or on a standalone Kempston compatible device, as those are already Atari-compatible interfaces. When soldering together the adapter, you will have the option to add a male DB9 connector as well, allowing you to use it as an adapter with common Atari-style joysticks as well.

The completed adapter can be seen below, this also includes the expected position that should be set on the *C64 JoyKEY* device itself. Note that the Sinclair Interface 2 standard does not officially have a power pin, so the active parts of the *C64 JoyKEY* will not be powered up by the system.

![Sinclair System Adapter](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/sinclair_adapter.jpg)
![Sinclair System Adapter](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/sinclair_adapter_db9.jpg)
![Sinclair System Jumpers](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/sinclair_jumpers.jpg)

# BOM
The parts listed are the ones I've used when building a Sinclair adapter for use with the *C64 JoyKEY*, part listed in parenthesis are considered optional (meaning you could build a more limited or alternative version of it). Note that depending on the joysticks you want to use with the adapter, you may only need one of the input headers (either IDC or male DB9) - though both would most likely be preferred, as that way you'll have the option later on. 

| Reference     | Item                                      | Count |
| ------------- | ----------------------------------------- | ----- |
| PCB           | Fabricate using Gerber files ([order](https://www.pcbway.com/project/shareproject/C64_JoyKEY__Sinclair_adapter_.html))  |     1 |
| J1 *          | 2x5 pin straight header pins or 2x5 IDC   |     1 |
| J2 **         | DE-9 Female straight connector            |     1 |
| J3            | DE-9 Male straight connector              |    (1)|

*) Breakable dual row pin headers can be used here, but I find it is nicer to use a 2x5 pin connector here instead. The cable needed is a 2x5 pin IDC cable (usually listed as *AVR* or *JTAG* cable) with sufficient length.

**) These are the blue kind with straight pins, it will include a few metal bits on it - remove those and you'll be left with the mostly blue part needed. Bend the pins slightly and match up with PCB, solder before it has a chance to fall off.