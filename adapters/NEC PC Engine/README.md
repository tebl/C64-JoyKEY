# JoyKEY (NEC PC Engine)

**UNTESTED**

The NEC PC Engine, primarily found in the japanese markets as well as everywhere fans of the shoot em up genre could be found, had several revisions and third party controllers though most stuck with the regular four button configuration (*I*, *II*, *RUN* and *SELECT*). A picture of the completed adapter has been included below, including the jumpers needed on the *C64 JoyKEY* device itself. Making on requires a cable with the right shape, the simplest way of obtaining these is either cutting up a cheap extension cables.

![NEC PC Engine System](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/nec_system.jpg)
![NEC PC Engine Adapter](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/nec_adapter.jpg)
![NEC PC Engine Jumpers](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/nec_jumpers.jpg)

# BOM
The parts listed are the ones I've used when building a Nintendo Entertainment System controller adapter for the *C64 JoyKEY*, part listed in parenthesis are considered optional (meaning you could build a more limited version of it).

| Reference     | Item                                      | Count | Order  |
| ------------- | ----------------------------------------- | ----- | ------ |
| PCB           | Fabricate using Gerber files              |     1 | PCBway
| C1            | 100nF ceramic capacitor (5mm)             |     1 |
| C3            | 10uF electrolytic capacitor 16v (4x2mm)   |     1 |
| J1,J2 *       | 2x5 pin straight header pins or 2x5 IDC   |     2 |
| J3            | 8 pin mini DIN with cable                 |     1 |
| JP1           | 2-pin breakable header pins (w/jumpers)   |    (1)|
| R1-R10        | 47k ohm resistor                          |    10 | 
| R11-R14       | 330 ohm resistor                          |     4 | 
| U1            | 74HC157 (DIP-16)                          |     1 |

*) Breakable dual row pin headers can be used here, but I find it is nicer to use a 2x5 pin connector here instead. The cable needed is a 2x5 pin IDC cable (usually listed as *AVR* or *JTAG* cable) with sufficient length, these are used with all adapters.