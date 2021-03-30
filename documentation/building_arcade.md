# 1> Building C64 JoyKEY Arcade
The *C64 JoyKEY Arcade* is a specialized version of the *C64 JoyKEY*, substituting Cherry MX switches for Sanwa arcade parts instead. Everything else has been kept mostly identical, allowing you to use all of the rather excellent adapters available as well. None of the adapters require any microcontrollers, for the most part the circuit will be similar to what were used on the original controllers - ensuring that you have a completely lag-free experience when playing on supported vintage systems.

![Last arcade build](https://raw.githubusercontent.com/tebl/C64-JoyKEY/main/gallery/last_arcade.jpg)

The *C64 JoyKEY Arcade* can be built or configured in a few different ways, so take a look at the [configuration](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/configuration.md) document - so that you'll have an idea of what you want to do with it. Pay particular attention to whether you'd require any of the features provided by the Arduino Pro Micro. While I am on of those weird people that prefer that the stick is on the wrong side, this is completely left up to you to decide and you do not need to install it this way if you would prefer the more standard orientation.

- [1> Building C64 JoyKEY Arcade](#1-building-c64-joykey-arcade)
  - [1.1> Ordering components](#11-ordering-components)
  - [1.2> Soldering it together](#12-soldering-it-together)
  - [1.3> Assembling the parts](#13-assembling-the-parts)
  - [1.4> Dealing with cables](#14-dealing-with-cables)
  - [1.5> All done](#15-all-done)
- [2> BOM](#bom)
  - [2.1> Adapters](#21-adapters)

## 1.1> Ordering components
The first step in building it, is what you've already done - figuring out what you wanted out of it in the first place! The second step is taking stock of which parts you don't already have, check out the [BOM](#BOM) (*Bill of Manufacturing*) below for a somewhat detailed of everything I used when building the prototype. Note that any adapters you'll want will have their own BOM.

You should be able to get most from the more reputable electronic component oligopolists, but because of extreme import fees where I live - those are for the most part not an option for me (I can't afford to pay €40 worth of fees to get €10 worth of parts at ten times the cost). What I do instead is order most things from ebay and AliExpress, you'll have to do a bit more of guesswork to find the correct parts - additionally, delivery times are most probaly to be counted in number of weeks and not days. 

My best suggestion on getting what you need the first time, is to use the search function and start with the description I've added, compare it to the pictures and order whichever looks to be the closest - if it's a cheap part, just get a few different ones! Pin headers usually come in 40-pin strips, both dual row and single row ones will be needed - add some right-angle ones as well (you'll just break off what you need). For some parts such as common resistor values, M3 nylon hex standoffs and switches it might be preferable to get a kit instead of the specific kind (the are usually referred to as a parts kit "*assortment*").

Order what you need, set the components aside until you're ready to start assembling things.

**NB!** I haven't specifically listed any of the actual arcade components for this build, mainly because people will have very specific preferences when it comes to the components they want to use and the quality they want them to have. Personally I just picked up an Aliexpress kit consisting of eight rather cheap buttons, a Sanwa clone stick and a generic black plastic case. These are cheap enough to get you started without going completely overboard. Not all builds will require more than a handful of buttons, but I just put them there - just to cover up the holes already in the case.

## 1.2> Soldering it together
Now that you have everything that you'll need in order to progress, it is time to start soldering things together. Do however start by studying the PCB, so that you'll have a general overview over where the various components fit on the board. Observe that a few of the components such as the diodes have a specific polarity they need to be installed in, you'll see this as indicated on the silkscreen printing. At the time of writing this guide, the PCB looks like the following:

![Build 001](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/build_arcade_001.jpg)

When ready to start soldering things into place, start by installing the physically smaller parts such as the resistors as well as the diodes (observing the polarity) - then move on up vertically to the taller parts to keep things manageable. I usually leave the Arduino as the last component to go in, mostly to limit the chance of accidentally killing it with static or some stray electricity when installing the rest.

The Arduino Pro Micro unfortunately seem to come in physically different variations, the variants that seem to be more common are shown below. The *C64 JoyKEY Arcade* can use either of these two variants, but you'll need to install it so that the straight header pins that go between the main PCB and the Arduino are soldered in the correct positions - I recommend doing a bit of dry-fitting **before** commiting to either one of them. The switch below it is needed if you accidentally try to flash it using the wrong settings in *Arduino Studio*, there is a separate page that details how to deal with the [firmware](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/firmware.md).

![Arduino Pro Micro variants](https://raw.githubusercontent.com/tebl/C64-JoyKEY/main/gallery/build_001.jpg)

Notice the spot for two jumpers marked **DEFAULT_FW**? You'll need to solder a piece of wire here in across both of these positions, the leftovers you got when snipping the leads from the resistors can be used for this purpose. What this does is connect the switches directly to the outputs to the vintage computer system, the only case for not doing this is when you specifically want the Arduino to run the Autofire firmware. This should also be linked when not installing any Arduino at all. If you are in doubt as to what you will do further down the road, consider just installing some pin headers and jumper caps here instead - there is a lot of space available in an Arcade case so it might be nice to have it as an easily changeable option.

The same goes for the power links marked **VCC_EN** and **ARD_EN**. It may be tempting to install male pin headers and jumper caps here, linking these allows the circuits to be powered up - the first one disconnects all power comping from any vintage system while the second just prevents the Arduino from being powered up. I recommend linking VCC_EN, but leaving ARD_EN unconnected until you are sure about how much power can be provided via the controller ports to which you'll be connecting the unit to.

## 1.3> Assembling the parts
At this point the main PCB should be mostly completed, the manual from this point on will therefore focus on tasks such as installing it into an arcade controller case and making the required cables. The first step you'll have to tackle is deciding where to install the board, at first glance you'll get the impression of having an enormous amount of case available for the little board.

The case I used has quite a lot of space available, but all of the cables were very short - for this reason I chose to install it in the center of the case. I added 10mm hex standoffs (F-F) to the board so that it clears any of the mounting and case supports already in there, I used a pen to draw out the outlines of the standoffs in the case then drilled 3mm holes - 6mm nylon M3 were then screwed into the standoffs from the underside as well.  

![Build 002](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/build_arcade_002.jpg)

The 2x5pin IDC cables used to connect to most vintage computers via the use of a suitable adapter, needs to be able to feed out to the outside of the case. For a better result you should probably used some sort of fine jewelry saw for this task, but as that was somewhere out in the garage - I just cut those bits out with some pliers and cleaned up the edges with a metal file instead. Any sharp edges that remain will more than likely destory the flat ribbon-cables, so I added a few layers of tape to give them some more chance of surviving. Probably should have used some soft electrical tape, but with the economy the way it is I'll need some time to save up for stuff like that.

Compared to the *C64 JoyKEY* board you won't actually see the main PCB, as it'll be inside the case - for that reason I recommend marking the ribbon cables properly so that they aren't swapped around by accident. I usually use a Brother P-touch label printer for stuff like this, but you could always mark the cables in some other way.

![Build 003](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/build_arcade_003.jpg)

## 1.4> Dealing with cables
Up to this point, there shouldn't be any more than the flat ribbon cables connected to the unit though you can probably tell by the pictures that I cheated and did a few anyway - mostly just to ensure that all of my cables reached properly. I've chosen to install my stick on the right-hand side, meaning that in the arcade world this is a left-handed setup - the cable used for it is therefore plugged into DIR_LEFT (yes, it's all backwards compared to vintage computers).

![Build 004](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/build_arcade_004.jpg)

Initially I had the thought of just using SPDT-switches installed on the case to account for FIRE2 and FIRE3 polarities, but by doing so I had forgotten that in addition to high and low we also needed a third state - not connected (N/C). I could have ordered the correct ones, specifically DPDT (on-off-on), but I didn't want to wait so I used what I had instead - specifically by just running the center pin of the polarity switch through one side of the enable switch instead. Also, having more switches is more fun. The switch marked up is used to disable the UP-direction on the stick, allowing me to use as dedicated button instead for this.

**NB!** When using SPDT switches such as these, the three pins on the bottom might be reversed from what you might expect. What this means is that when you have the switch in the upper position, the bottom two pins will be connected together - the reason I mention it is so that you don't accidentally set switch polarity to something that the vintage system you're using it with won't appreciate. To keep the mental gymnastics low I recommend wiring so that enabled/VCC is the upper switch position. 

![Build 005](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/build_arcade_005.jpg)

The red buttons you just connect where you want them, move them around if you don't like the layout originally selected. Personally I set the first middle row buttons to port 2 fire 1/2/3, then set the first one on the second row to UP, fire 1 and finally fire 2. Finally, I connected one of the smaller buttons to port 1 fire 3 - mostly so that I could map it to the start button with the [Sega Mega Drive adapter](https://github.com/tebl/C64-JoyKEY/tree/main/adapters/Sega%20Mega%20Drive).

## 1.5> All done
That should be most of the information you'll need. Head on over to the [configuration](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/configuration.md) page to ensure that you have the switches set up in the correct position. The picture below shows how I've set them up for use with the Sega Mega Drive adapter, here both of the FIRE2 and FIRE3 buttons are **EN**abled and for that reason they are in the **UPPER** position. Other systems require the switch to be set to **N/C** instead, this is the lower position.

When the required **POL**arity is listed GND, such as with the Sega Mega Drive, this means you should put the corresponding switch in the lower position. When listed as VCC, then you should put it in the upper position.

![Build 006](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/build_arcade_006.jpg)

# 2> BOM
This section attempts to maintain a list of the parts you'd need in order to build a feature-complete *C64 JoyKEY*, any parts that you could potentially do without have part counts listed in parenthesis. You will find all tested PCBs including on [PCBWay shared projects](https://www.pcbway.com/project/shareproject/?tag=C64%20JoyKEY) relation to this project, this will also include any [adapters](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/adapters.md) - if you should need them.

| Reference        | Item                                         | Count | Order  |
| ---------------- | -------------------------------------------- | ----- | ------ |
| PCB              | Fabricate using Gerber files                 |     1 | [PCBway](https://www.pcbway.com/project/shareproject/C64_JoyKEY_Arcade.html) |
| A1               | Arduino Pro Micro                            |    (1)|        |
|                  | 12-pin straight pin header                   |    (2)|        |
| D1,D2,J4-J14 ****| 2-pin JST-XH socket                          |   (16)|        |
| J3,J15 ****      | 5-pin JST-XH socket                          | 1 (1) |        |
| D3               | 1N4001 diode DO-41                           |    (1)|        |
| D4               | 1n4148 diode DO-35                           |    (1)|        |
| J1,J2 ***        | 2x5 pin straight header pins or 2x5 IDC      |     2 |        |
|                  | 2x5 pin IDC to female DB9 cable              | 1 (1) |        |
| JP1-JP3 *        | 3-pin right-angle header pins (w/jumper cap) |     3 |        |
| JP4,JP6 **       | 2-pin straight header pins (w/jumper cap)    |     2 |        |
| R1,R2            | 270 ohm resistor                             |     2 |        |
| R3,R4            | 330 ohm resistor                             |    (2)|        |
| R5,R6,R9,R14-R21 | 10k ohm resistor                             |    (12)|       |
| SW8              | Tactile momentary switch 6x6x6mm             |    (1)|        |
|                  | Nylon M3 hex standoffs 10mm (F-F)            |    (4)|        |
|                  | Nylon M3 screws                              |    (8)|        |
| Arcade parts     | Sanwa original or cloned arcade parts        |       |        |

*) The parts listed here assumes you want a unit built for a specific machine, requiring you to open the controller to change the settings. If you do not want this, then I recommend purchasing 5 SPDT switches suitable for panel mounting as well as some wire to connect them up. The reason you'll need 5, and not 3, is so that you can have the switches set as N/C (meaning disconnected).

**) Replace with piece of wire if not installing Arduino Pro Micro on the board, or you know you won't need the alternative autofire firmware at any point.

***) Breakable dual row pin headers can be used here, but I find it is nicer to use a 2x5 pin connector here instead. The easiest way to get a cable like this is to order a couple of 2x5 pin IDC cable (usually listed as *AVR* or *JTAG* cable) with sufficient length, cut off the end you don't need and then attach a female DB9 connector of the IDC variety. Pre-made cables have been observed on ebay, but have not seen any that are more than 20cm in length.

****) You'll need to determine for yourself which connectors you'll need to install. Though I prefer the JST-XH sockets as indicated on the silkscreen, these may be substituted with standard straight pin headers instead - the reason to use them is mainly just because they are what seems to be used with most of the cheap Sanwa-cloned arcade kits that I've looked at. You'll probably only need the one 5-pin socket, the choice between the two is whether you prefer to mount the stick on the left or the right side of the arcade stick. 

## 2.1 Adapters
The necessity for adapters will depend on the type of systems that you have, so I've separated the BOM for those into separate modules. See document [adapters](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/adapters.md) for a list of available and tested adapters, click on the ones you are interested in to get a BOM for those.