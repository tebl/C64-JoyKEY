# IDC to DB9
This might seem a bit strange at first look, but there's a reason for this adapter - some computers have recessed controller ports. What that means in a lesser amount of words is that most DB9 connectors won't fit these systems, so I opted to create a small adapter PCB that is just a straight plug from 2x5 IDC to DB9. One specific system that requires this is the Commodore Amiga 600.

# BOM
The parts listed are the ones I've used when building a Sinclair adapter for use with the *C64 JoyKEY*, part listed in parenthesis are considered optional (meaning you could build a more limited version of it). 

| Reference     | Item                                      | Count |
| ------------- | ----------------------------------------- | ----- |
| PCB           | Fabricate using Gerber files ([order]())  |    (1)|
| J1 *          | 2x5 pin straight header pins or 2x5 IDC   |     1 |
| J2 **         | DE-9 Female straight connector            |     1 |

*) Breakable dual row pin headers can be used here, but I find it is nicer to use a 2x5 pin connector here instead. The cable needed is a 2x5 pin IDC cable (usually listed as *AVR* or *JTAG* cable) with sufficient length.

**) These are the blue kind with straight pins, it will include a few metal bits on it - remove those and you'll be left with the mostly blue part needed. Bend the pins slightly and match up with PCB, solder before it has a chance to fall off.