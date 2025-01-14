# Adapter 9 from 2040
I cant really recall the entire list of adapters that I've made of the years, but there might actually have been a few more than 9 though this is definitely the first one that I've ended up calling *Adapter 9 from 2040*. Strikingly similar in function to the [C64 Joystick Adapter](https://github.com/tebl/C64-Joystick-Adapter) that I made a while back, but given my renewed interest in the *C64 JoyKEY* via [C64 JoyKEY 2040](https://github.com/tebl/C64-JoyKEY/tree/main/C64%20Joykey%202040) it made somewhat sense to create yet another "DB-9" to USB-controller adapter.

![TheSpectrum](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/2025-01-10%2004.00.49.jpg)

Except this time the implementation was based on [GP2040-CE](https://gp2040-ce.info), running on a Raspberry Pi Pico variant commonly referred to as the *RP2040-Zero*. At this point quite a lot of the older Arduino-libraries have hardly seen any features added to it, but as for *GP2040-CE* - if there's a feature that you can think of, then it's probably already there in some form or another. *Adapter 9 from 2040* in its most common setup presents itself to the system you connect it to as a wired *Xbox-360 Controller*, meaning that you can use it as a controller on quite a lot of different systems.

![TheSpectrum](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/build/adapter9_2040/031.jpg)

Personally I wanted it for use with the various releases from *Retro Games Ltd.* - great little systems for playing games on when I want something that should just work, but absolutely terrible controllers. I've tested it with *TheC64 Mini*, *TheA500 Mini* and most recently *TheSpectrum* to great effect, and being able to use my vintage joysticks with them only adds to the enjoyment.

- [1> Building the device](#1-building-the-device)
- [2> Schematic](#2-schematic)
- [3> BOM](#3-bom)

# 1> Building the device
Building the device should be a straight-forward affair, you just solder the meager selection of components into place. Pay particular attention to keeping the alignment of parts somewhat straight, that's pretty much it. This documentation was written with a board that looks like the following in mind, but note that the GitHub-repository might contain changes that have yet to be tested. For that reason it is recommended that PCBs are ordered directly from the PCBWay links provided in the BOM).

![Bare boards](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/build/adapter9_2040/001.jpg)
![Build 010](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/build/adapter9_2040/010.jpg)

Before getting started on installing actual components there are a few things that we need to cover first, and that's setting up the various jumpers found on the back of the PCB. The ones towards the bottom covers the kind of signals we want to hook up to the "DB-9"-connector, and the only one that I recommend linking is *VCC_EN* as that will be needed for quite a few of the joysticks that include a turbo-function. Takes a little bit of practice to get these to link, but if you try and get the soldering iron to heat both pads simultaniously and keep feeding in solder you'll get a perfect blob before long.

The jumpers for *B2_EN* and *B3_EN* are for controllers that have one or two extra fire buttons with a commoned ground, but as these are quite rare I'd recommend that you leave these as they are unless you specifically know what you're doing. Or in the even rarer case, is the one where you're using either [C64 Arcade](https://github.com/tebl/C64-JoyKEY/tree/main/C64%20Arcade), [C64 JoyKEY](https://github.com/tebl/C64-JoyKEY/tree/main/C64%20Joykey) or the [C64 JoyKEY 2040](https://github.com/tebl/C64-JoyKEY/tree/main/C64%20Joykey%202040).

The one case where we really need to pay attention is the ones toward the middle of the PCB, these are needed in order to specify how your *0.96" I2C OLED*-display should be wired up. The reason is that when you're ordering these from various sources they'll send you displays that were made with differing pinouts, even more annoyingly is that often you'll look at the pictures to verify that you're getting a specific revision of it - but they'll just send you a different one. Here's what the one I've jumpered for in the above picture, note specifically that *GND* is on the first pin. That means that on both jumpers we need to link pins 1-2 together (with the tiny triangle indicating pin 1). If, on the other hand, the first pin had been labelled *VCC* (or quite possibly *VDD*) the you'd instead need to link pins 2-3 for both of the jumpers. 

![Build 008](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/build/adapter9_2040/008.jpg)
![Build 009](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/build/adapter9_2040/009.png)

Moving on to actualy components that we'll be installing, I always recommend that you install things in the order of their physical height. There's not all that much that can go wrong beyond making things harder for yourself to put this one together so don't overthink things. You will however need to decide if you'll be installing the *RP2040-Zero* development board directly to the board, or with pins between the two. Before all that though, we need to talk about what a *RP2040-Zero* actually is. And here's a couple of them that you might encounter while shopping around: 

![RP2040-Zero development boards](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/build/adapter9_2040/006.jpg)

Both of these are smaller versions of the *Raspberry Pi Pico* boards that come directly from the *Raspberry Pi Foundation*, but they're running the same chip so you essentially get the same amount of computational power - just with slightly less pins, and in a significantly smaller package. Confusingly this isn't a *Raspberry Pi* as the single-board computers (*SBC*) that came before it, this is a somewhat new line of microcontrollers similar to the *Arduino* or *ESP-32*. As for the boards above, the first one is from a vendor called *Waveshare* and this is the version that you'll encounter on more reputed sites for purchasing electrical components. The other is a clone that normally works just as well, just at half the price and without any expectation that all of were put together like they should - so buy at least two of them in case one blows up!

![Build 011](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/build/adapter9_2040/011.jpg)

Here I've skipped over the difficult parts and soldered it into place. In order to get the alignment just right I tend to insert pin headers through both boards on at least two of the sides, then position it just right and solder one pin into place. If it all looks right, you can go ahead and remove the pin headers before soldering the rest. It might take some getting used to soldering things together like this if you're not used to it, but just try and get the soldering iron to touch both pads at the same time then feed in the solder until it forms a shiny avalanche.

![Build 012](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/build/adapter9_2040/012.jpg)

If you're going to install a faceplate on the adapter, then you're going to need a set of standoffs in each of the four corners. These need to have a height of 6mm, they're fixed in place with similar nuts on the underside. You might also use some that are slightly longer, but keep in mind that we need to have enough of a reach on the pin headers on your OLED to match - switches also need to be tall enough to poke through all of it. On second thought, just go with 6mm and we'll move on from there.

![Build 007](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/build/adapter9_2040/007.jpg)
![Build 013](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/build/adapter9_2040/013.jpg)

Next up is the *right-angle "DB-9" male connector* that I keep buying off of the regular sites, and I believe it's a clone of an RND-part, but don't hold me to that. If you look for the a connector that looks like this on the pictures, then you'll get the correct one. It snaps into place on the board and solders in well enough, just keep your fingers away from the metal as it heats up quite quickly when soldering. I've literally burned myself on them several times. And at the time of writing, this is probably the first time I've used the word "literally" correctly. I hope. 

![Build 015](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/build/adapter9_2040/015.jpg)
![Build 016](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/build/adapter9_2040/016.jpg)

The next step is all of the switches, and here I've inserted them all into place and temporarily installed the faceplate. Doing it in this order ensures that the switch ends up sitting correctly, and won't be rubbing too much against the cutouts in the faceplate. Once satisfied with all of that, you can go ahead and solder in the switches. Just do one of the pins at first, then recheck to make sure it hasn't popped out or gone wonky on you in the meantime (ask me how I know).

![Build 017](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/build/adapter9_2040/017.jpg)

As for my next trick on my list of things I've just done without much to actually show you, I've gone ahead and added the display. Previously on this episode of putting things together with our fiery stick of endless ouchies (also known as a soldering iron), we lamented the state lack of real part numbers for things like displays. Clones taking liberties when shamelessly copying other clones, enabling people like me to actually own a whole bunch of them and so on. The board will take just about any *0.96" I2C OLED*-display, but you'll need to ensure that you order specific ones if you want the cutouts on the faceplates to line up just perfectly. Currently there is only one available, [FaceplateB](https://github.com/tebl/C64-JoyKEY/tree/main/faceplates/Adapter%209%20FaceplateB) - this one was designed for the *New* displays available in all the usual places. Technically it's actually the new *New* display, but who's counting - at least one identifying trait is that they're the first generation that came with yellow as colour.

There are holes for orienting it correctly, but before even considering soldering anything - take a look at how it looks with the faceplate in place. We need to ensure that it sits flush against the inside edge of the faceplate, and while you could glue the foam that often comes around the pins directly to the PCB to push it upwards - I prefer adding a bunch of layers of double-sided foam tape. Just don't go overboard -  we want it to push the glass up against the PCB, not shatter the whole thing from extreme pressure. If you need to reorient it a bit, you can poke a screwdriver into the mounting holes from the back and adjust it that way. Once satisfied with your rough placement, solder a single pin. Recheck. Recheck. Recheck. And then solder the rest.

![Build 020](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/build/adapter9_2040/020.jpg)

Once satisfied with all of it, make yourself a cup of tea, soup or whatever you want - you're buying anyway! Once back to the table, you need to take the faceplate back off again, as we need access to the buttons directly on the *RP2040-Zero* when installing *GP2040-CE*, but that's all covered in a completely different document - [From Zero to GP2040](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/gp2040_zero.md).

# 2> Schematic
The supplied KiCad files should be sufficient as both a schematic and as a  starting point for ordering PCBs (basically you could just zip the contents of the export folder and upload that on a fabrication site), the schematic is also available in [PDF-format](https://github.com/tebl/C64-JoyKEY/tree/main/documentation/schematic) and this is what you'll need to print and work your way through when things fail to work as expected.

# 3> BOM
Most parts should be easy to get a hold of from all of the regular places, just not any of the incredibly reputable ones. Which is why things usually cost a third of what they cost elsewhere, but you need to buy two in order to ensure that at least one works. I get most of my components from AliExpress though I hear nice things about the wheel of fortune thingie, but they sent one too many notifications so they're banned in my household.

I'd really like for you to have a nice and clear BOM with consistent part numbers from actual reputable sites, but I can't even afford their shipping options so it is what it is - mostly hints at what to search for and how many you need. If a counted part is listed in a parenthesis, then you don't strictly need that part though it's all cheap enough that you probably count on buying them anyway.

| Reference        | Item                                                              | Count | Order  |
| -----------------| ----------------------------------------------------------------- | ----- | ------ |
| PCB              | Fabricate using Gerber files                                      |     1 | [PCBWay](https://www.pcbway.com/project/shareproject/Adapter_9_from_2040_578739f8.html)
| PCB (Faceplate B)| Fabricate using Gerber files                                      |    (1)| [PCBWay](https://www.pcbway.com/project/shareproject/Adapter_9_from_2040_Faceplate_B_dc748e4f.html)
| IC1 *            | 0.96" I2C OLED display 128x64 (New variant reqd. for FaceplateB)) |    (1)|
| J1               | Male DB-9 right-angle connector (usually listed as PCB-mount)     |     1 |
| SW1-SW8          | 6x6x10mm tactile switch ("DIP-4")                                 |    (8)|
| U1               | Raspberry Pi Pico (RP2040-Zero)                                   |     1 |
| **               | M3 nylon nut                                                      |    (4)|
| **               | M3x6+6mm nylon hex standoff                                       |    (4)|
| **               | M3x6mm nylon screw                                                |    (4)|

*) See text for construction for hints on purchasing the correct variant to go with a specific faceplate, when in doubt order several and use the one that fits.

**) These components are for the additional faceplate. Strictly not necessary, but keeps the  whole setup looking as stylish as it can be. The faceplate is reversible, so install it in the orientation that you'd like.