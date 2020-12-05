# Building C64 JoyKEY

Congratulations on the taking the leap to build my slightly over-complicated 7-key keyboard/joystick, now probably compatible with your favourite vintage computer. It can be built or configured in a few ways, so take a look at the [configuration](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/configuration.md) document so that you'll have an idea of what you want to do with it - pay particular mention to whether you'd require any of the features provided by the Arduino Pro Micro. 

# Building it
The first step in building it, you've already done (when you figured out what you wanted out of it). The second step is ordering the parts that you don't already have, check out the BOM (*Bill of Manufacturing*) for a somewhat detailed of what you might need. Order what you need, what you want and set aside until you're ready to start assembling things.

When ready to start soldering things into place, start by installing the physically smaller parts such as the resistors then move on up vertically to the larger parts to make things easier on yourself. Note that the Cherry MX switches will usually take a bit of force to get into place, so make sure to push them firmly into place before soldering anything permanently into place (removing solder is a **lot** harder to remove than it is to add it).

![Arduino Pro Micro variants](https://raw.githubusercontent.com/tebl/C64-JoyKEY/main/gallery/2020-12-01%2021.58.51.jpg)

Arduino Pro Micro unfortunately seem to come in physically different variations, the ones most common seem to be the ones shown above (at least those are the two I have) - the *C64 JoyKEY* can use either of these, but you need to align it so that the pins are soldered in the correct place so do a bit of dry-fitting **before** commiting. The switch below it is needed if you accidentally try to flash it using the wrong settings in *Arduino Studio*, there is more information on flashing the Arduino [here](https://github.com/tebl/C64-JoyKEY/tree/main/software/arduino/Joykey).

Notice the spot for two jumpers marked **DEFAULT_FW**? You'll need to add solder a piece of wire here, the leftovers you got when snipping the leads from the resistors can be used for this purpose. You need to do this even if you don't want the Arduino at all, the only reason not to do so is if you specifically want to use the autofire variant of the firmware instead.

Next you'll want to screw together both pieces of PCBs, just put the female HEX standoffs of the size you want between them and add screws from both sides - this should make the whole thing stand up to some abuse (physical, not the MS-DOS game though you could try that one out later in DOSBOX). Push the MX keycaps onto the top of the MX-switches, again you'll need to use a bit of careful force.

The last step is putting together some cables for your most common vintage systems, but if you only want to use it as a USB device then feel free to skip this step. Still here? Awesome.

![IDC to female DB9 cable]()

Soldering connectors is hard if you do it the hard way - the easiest way to get a cable suitable for use with *C64 JoyKEY* is adapting an existing cable. The ones I've used are usually listed as 2x5 pin *AVR* or *JTAG* cable, just cut off the end that doesn't fit into the board properly (red stripe on left side) as in the photo above (remove the 10th wire as it is not needed). Buy some female DB9 IDC connectors, line up pin 1 with the red stripe and squeeze the top part of the connector into place until you hear a click.

That's it! Head over to the [configuration](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/configuration.md) page to ensure that you have the jumpers set up correctly.

# BOM
This section attempts to maintain a list of the parts you'd need in order to build a feature-complete *C64 JoyKEY*, any parts that you could potentially do without have part counts listed in parenthesis. I get most of my parts from ebay or AliExpress, for the most part you can put in the description into the search box and pick parts on the cheaper side - do note however that delivery times might be counted in weeks and not days.

Pin headers usually come in 40-pin strips, so you just break off what you need. There are assortment kits available with a selection of resistor values, nylon hex standoffs, switches etc that might be cheaper in the long run rather than buying each component separately.

| Reference     | Item                                      | Count |
| ------------- | ----------------------------------------- | ----- |
| PCB           | Fabricate using Gerber files ([order]())  |     1 |
| PCB Faceplate | Fabricate using Gerber files ([order]())  |    (1)|
| A1            | Arduino Pro Micro                         |    (1)|
|               | 12-pin straight pin header                |    (2)|
| D1 *          | 5mm bright LED, RED                       |    (1)|
| D2 *          | 5mm bright LED, GREEN                     |    (1)|
| J1,J2 **      | 2x5 pin straight header pins or 2x5 IDC   |     2 |
|               | 2x5 pin IDC to female DB9 cable           | 1 (1) |
| JP1-JP3       | 3-pin right-angle header pins             |     3 |
| R1,R2         | 270 ohm resistor                          |     2 | 
| R3,R4         | 220 ohm resistor                          |    (2)| 
| SW1-SW7 ***   | Cherry MX compatible switch (green)       |     7 |
|               | MX compatible 1u blank keycaps            |     7 |
| SW8           | Tactile momentary switch 6x6x6mm          |    (1)|
|               | 3M bumpon adhesive rubber feet            |    (4)|
|               | Nylon M3 hex standoffs 8mm                |    (4)|
|               | Nylon M3 screws                           |    (8)|

*) When used with the faceplate, a bright LED will be needed to shine through the PCB. 5mm flat top type LEDs will allow less space between the PCBs.

**) Breakable dual row pin headers can be used here, but I find it is nicer to use a 2x5 pin connector here instead. The easiest way to get a cable like this is to order a couple of 2x5 pin IDC cable (usually listed as *AVR* or *JTAG* cable) with sufficient length, cut off the end you don't need and then attach a female DB9 connector of the IDC variety. Pre-made cables have been observed on ebay, but have not seen any that are more than 20cm in length.

***) I've been using the cheaper Gateron clones and they work well for this type of use, you can use either the 3- or 5-pin variety. The green switches are the ones that have a clicky sound, pick a different colour if that is not something you'd be interested in. Keycaps are usually listed as blank mechanical gaming MX-compatible keycaps.