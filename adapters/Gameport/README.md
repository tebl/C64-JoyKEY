# Gameport

While the IBM PC has seen its fair share of joysticks over time, they were primarily analog though the digital variety have also been regularly seen since the early 1980s as well. The rise of competing gaming consoles soon started to popularise the gamepads over the analog controllers and soon, even the PC saw their share of excellent controllers such as the Gravis Gamepad. While they won't replace the feel and response of an analog flightstick for those type of games, I feel that there are enough variety that the digital controllers also should have their place on the system - for that system I've created a separate Gameport-adapter for the *C64 JoyKEY*. Granted it won't make all that much sense connecting a keyboard-like controller to a computer with a great keyboard, but the ability to use the *C64 JoyKEY Arcade* with it should present as an excellent combination.

The circuit was adapted from the one listed on [allpinouts.org](https://allpinouts.org/pinouts/cables/input_device/atari-style-joystick-to-pc-joystick-adapter/). Additional information was also listed in a separate [article](https://allpinouts.org/pinouts/connectors/input_device/joystick-pc-gameport/) as well, and could be interesting when working out how the adapter works.

![PC Gameport Adapter](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/gameport_adapter.jpg)
![PC Gameport Jumpers](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/gameport_jumpers.jpg)

# BOM
The parts listed are the ones I've used when building a MSX adapter for use with the *C64 JoyKEY*, part listed in parenthesis are considered optional (meaning you could build a more limited version of it). 

| Reference     | Item                                      | Count | Order   |
| ------------- | ----------------------------------------- | ----- | ------- |
| PCB           | Fabricate using Gerber files              |    (1)| PCBway
| D1,D2         | 1n4148 small-signal diode (DO-35)         |     2 |
| J1,J2 *1      | 2x5 pin straight header pins or 2x5 IDC   |     2 |
| J3 *2         | 2x8 pin straight header pins or 2x8 IDC   |     1 |
| Q1,Q2 *3      | BC557 transistor (TO-92)                  |     2 |
| R1,R2,R5,R6   | 2k2 (2200) ohm resistor                   |     4 |
| R3,R4         | 100k ohm resistor                         |     2 |
| RV1,RV2       | RM-065 100k potentiometer                 |     2 |


1) Breakable dual row pin headers can be used here, but I find it is nicer to have a proper 2x5-pin keyed connector here instead. The cable you will need is a 2x5 pin IDC cable (usually listed as *AVR* or *JTAG* cable), with sufficient length to position where you would like - ideally you will want two of these, but you can make due with one connected to port 1.
2) As with above, 2x8-pin IDC header is recommended. For the cable you will want a 16-pin IDC to a male DB15-ribbon cable - you can buy these ready made from the usual sources. If you can't find one that you like, I recommend picking up 16-pin IDC cables of intended length and then put on a male IDC DB15-connector. While there are special tools created to crimp these on, I find that just pushing hard on them with the handle of a screwdriver works just as well for a single cable.
3) I have not tested this, but I suspect that replacing these with 2n3906 installed backwards may work just as well.