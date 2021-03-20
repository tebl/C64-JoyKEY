# JoyKEY (Sega Mega Drive)

The Sega Mega Drive, released as the Sega Genesis in North America, originally came with a what is now known as the 3-button controller though it actually had the *START* button as a fourth button as well. While it was designed to be backwards compatible with the Sega Master System, it had a few tricks up its sleeve by adding a digital multiplexer chip that would read out the buttons over a few wires instead of having dedicated wires for each button (like previous Atari-style pinouts). There was also a 6-button controller released later, but for now I've chosen to instead focus on the 3-button controller instead - simply because we only have 3 buttons on the *C64 JoyKEY* (the *START* button has been placed on the actual adapter instead).

![Sega Mega Drive](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/smd_system.jpg)

The completed adapter can be seen below, this also includes the jumpers that should be set on the *C64 JoyKEY* device itself. Note that because of the recessed controller ports on the actual console, a larger connector such as the DB9 IDC variety will not fit into the console - I've solved that by using a straight [IDC to DB9](https://github.com/tebl/C64-JoyKEY/tree/main/adapters/IDC%20to%20DB9) adapter as well.

![Sega Mega Drive Adapter](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/smd_adapters.jpg)
![Sega Mega Drive Jumpers](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/smd_jumpers.jpg)

# BOM
The parts listed are the ones I've used when building a Sega Mega Drive controller adapter for the *C64 JoyKEY*, part listed in parenthesis are considered optional (meaning you could build a more limited version of it). Additionally, check out the BOM on the [IDC to DB9](https://github.com/tebl/C64-JoyKEY/tree/main/adapters/IDC%20to%20DB9) page - if you don't already have on of these ready to go.

| Reference     | Item                                      | Count | Order  |
| ------------- | ----------------------------------------- | ----- | ------ |
| PCB           | Fabricate using Gerber files              |    (1)| [PCBway](https://www.pcbway.com/project/shareproject/C64_JoyKEY__Sega_Mega_Drive_Genesis_adapter_.html)
| J1 *          | 2x5 pin straight header pins or 2x5 IDC   |    (1)|
| J2,J3 *       | 2x5 pin straight header pins or 2x5 IDC   |     2 |
| J4            | 3-pin dual row breakable pin headers      |    (1)|
| JP1           | 2-pin breakable header pins (w/jumpers)   |    (1)|
| R1-R9         | 10k ohm resistor                          |     9 | 
| SW1           | 6x6mm momentary tactile switch            |     1 |

*) Breakable dual row pin headers can be used here, but I find it is nicer to use a 2x5 pin connector here instead. The cable needed is a 2x5 pin IDC cable (usually listed as *AVR* or *JTAG* cable) with sufficient length.