# JoyKEY (SMS Adapter)
The gamepad for the Sega Master System is mostly compatible with the Atari-style joystick, but as people regularly did during those day - they came up with an entirely different way to get a secondary fire-button. What this means is that some rewire-ing is most likely needed. You could quite possibly just create a cable doing this for you for the necessary details), but since I hate soldering connectors I put together a small adapter board (just plug a 2x5 pin IDC cable in between the adapter and JoyKEY port 2). Either way you choose, check out the [schematic](https://github.com/tebl/C64-JoyKEY/raw/main/documentation/schematic/SMS%20Adapter.pdf) for the details.

# BOM
This section attempts to maintain a list of the parts you'd need in order to build a feature-complete *C64 JoyKEY*, any parts that you could potentially do without have part counts listed in parenthesis. 

| Reference     | Item                                      | Count |
| ------------- | ----------------------------------------- | ----- |
| PCB           | Fabricate using Gerber files ([order]())  |    (1)|
| J1 *          | 2x5 pin straight header pins or 2x5 IDC   |     1 |
| J2 **         | DE-9 Female straight connector            |     1 |
| JP1,JP2 ***   | 3-pin breakable header pins (w/jumpers    |    (2)|

*) Breakable dual row pin headers can be used here, but I find it is nicer to use a 2x5 pin connector here instead. The cable needed is a 2x5 pin IDC cable (usually listed as *AVR* or *JTAG* cable) with sufficient length.

**) These are the blue kind with straight pins, it will include a few metal bits on it - remove those and you'll be left with the mostly blue part needed. Bend the pins slightly and match up with PCB, solder before it has a chance to fall off.

***) Can be replace with small pieces of wire if you do not want the ability to swap FIRE1 and FIRE2.

****) There is no more notices than three, I just wanted to see if I could write as many as there are parts on the actual PCB.