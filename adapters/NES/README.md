# JoyKEY (Nintendo Entertainment System)

**UNTESTED**

The Nintendo Entertainment System, commonly known as just the *NES* came with a four button controller (*B*, *A*, *SELECT* and *START*). A picture of the completed adapter has been included below, including the jumpers needed on the *C64 JoyKEY* device itself. Making on requires a cable with the right shape, the simplest way of obtaining these is either cutting up a cheap extension cables or one of the rather horrible cloned controllers (both are available on your favourite marketplace for all things Chinese in origin).

![Nintendo Entertainment System](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/nes_system.jpg)
![Nintendo Entertainment System Adapter](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/nes_adapter.jpg)
![Nintendo Entertainment System Jumpers](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/nes_jumpers.jpg)

# BOM
The parts listed are the ones I've used when building a Nintendo Entertainment System controller adapter for the *C64 JoyKEY*, part listed in parenthesis are considered optional (meaning you could build a more limited version of it).

| Reference     | Item                                      | Count | Order  |
| ------------- | ----------------------------------------- | ----- | ------ |
| PCB           | Fabricate using Gerber files              |     1 | PCBway
| J1,J2 *       | 2x5 pin straight header pins or 2x5 IDC   |     2 |
| J3            | Male end of NES extension cable           |     1 |
| JP1           | 2-pin breakable header pins (w/jumpers)   |    (1)|
| R1-R8         | 1k ohm resistor                           |     9 | 
| SW1           | 6x6mm momentary tactile switch            |    (1)|
| U1            | CD4021BE (DIP-16)                         |     1 |

*) Breakable dual row pin headers can be used here, but I find it is nicer to use a 2x5 pin connector here instead. The cable needed is a 2x5 pin IDC cable (usually listed as *AVR* or *JTAG* cable) with sufficient length, these are used with all adapters.