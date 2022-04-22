# JoyKEY (Nintendo Entertainment System)
The Nintendo Entertainment System, commonly known as just the *NES* came with a four button controller (*B*, *A*, *SELECT* and *START*). A picture of the completed adapter has been included below, including the jumper position that you need to use on the *C64 JoyKEY* device itself.  For the later revisions of the *C64 JoyKEY* you'll have a row of buttons on the bottom left of the device, these are ideal for using as the  *SELECT* and *START* - for earlier revisions you'd install a physical *START*-button on the adapter itself.

Making the adapter requires a cable with the right shape, Nintendo wanted these to be explicitly proprietary so you can't exactly order one from electronic parts vendors though obtaining one isn't exactly hard. The simplest way of obtaining the plug today is either cutting up cheap NES controller extension cable, alternatively you could just purchase one of the rather horrible cloned controllers and cut it off from that instead. Both of these options should be readily available from your favourite off-brand marketplace for all things "*Made in China*", AliExpress, Ebay, Wish and most similar sites.

With the cut-off cable in hand, the individual strands of the cable can then be soldered to the adapter PCB. The pins are numbered left to right, match up the individual strands to the pin numbering as shown in the [schematic](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/schematic/adapters/NES.pdf). Ideally I'd like to just tell you where to connect them based on the colour, but with the cost of these things I wouldn't expect them to be identical across all of them - so just use your multimeter in order to identify what goes where on the connector.

![Nintendo Entertainment System](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/nes_system.jpg)
![Nintendo Entertainment System Adapter](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/nes_adapter.jpg)
![Nintendo Entertainment System Jumpers](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/nes_jumpers.jpg)

# BOM
The parts listed are the ones I've used when building a Nintendo Entertainment System controller adapter for the *C64 JoyKEY*, part listed in parenthesis are considered optional (meaning you could build a more limited version of it).

| Reference     | Item                                      | Count | Order  |
| ------------- | ----------------------------------------- | ----- | ------ |
| PCB           | Fabricate using Gerber files              |     1 | [PCBWay](https://www.pcbway.com/project/shareproject/C64_JoyKEY_NES_adapter_74ada4a5.html)
| J1,J2 *       | 2x5 pin straight header pins or 2x5 IDC   |     2 |
| J3            | Male end of NES extension cable           |     1 |
| JP1           | 2-pin breakable header pins (w/jumpers)   |    (1)|
| R1-R8         | 1k ohm resistor                           |     9 | 
| SW1 **        | 6x6mm momentary tactile switch            |    (1)|
| U1            | CD4021BE (DIP-16)                         |     1 |

*) Breakable dual row pin headers can be used here, but I find it is nicer to use a 2x5 pin connector here instead. The cable needed is a 2x5 pin IDC cable (usually listed as *AVR* or *JTAG* cable) with sufficient length, these are used with all adapters.

**) This switch is only required using an earlier revision of the *C64 JoyKEY*, the three extra switches were added in revision E.