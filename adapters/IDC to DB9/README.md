# IDC to DB9

An adapter that isn't actually an adapter might seem a bit strange at first look, but I promise that there's a use-case for it somewhere. One of them is that a few systems computers have recessed controller ports, the Commodore Amiga 600 is a rather common example of this. What that means in a slightly lesser amount of words, not by much, is that most DB9 connectors won't fit on these systems without using a hacksaw. That's why I created this small adapter, that is just a straight plug from 2x5 IDC to DB9. Another reason is that this way you can actually build the whole system without actually soldering wires onto a connector.

Given the rather generic use of this module compared to the others, I can't say anything about said systems ability to power a C64 JoyKEY with backlights and the whole package - I've added a power jumper so that we can stop the module from drawing power from the system (short **VCC_EN** if you know what you're doing).

![IDC to DB9 Adapter](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/straight_adapter.jpg)
![IDC to DB9 Adapter (bottom)](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/straight_adapter_bottom.jpg)

# BOM
The parts listed are the ones I've used when building a Sinclair adapter for use with the *C64 JoyKEY*, part listed in parenthesis are considered optional (meaning you could build a more limited version of it). 

| Reference     | Item                                      | Count | Order   |
| ------------- | ----------------------------------------- | ----- | ------- |
| PCB           | Fabricate using Gerber files              |    (1)| [PCBway](https://www.pcbway.com/project/shareproject/C64_JoyKEY__IDC_to_DB9_.html)
| J1 *          | 2x5 pin straight header pins or 2x5 IDC   |     1 |
| J2 **         | DE-9 Female straight connector            |     1 |

*) Breakable dual row pin headers can be used here, but I find it is nicer to use a 2x5 pin connector here instead. The cable needed is a 2x5 pin IDC cable (usually listed as *AVR* or *JTAG* cable) with sufficient length.

**) These are the blue kind with straight pins, it will include a few metal bits on it - remove those and you'll be left with the mostly blue part needed. Bend the pins slightly and match up with PCB, solder before it has a chance to fall off.