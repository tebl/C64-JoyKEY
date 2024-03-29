# Configuration
This document details the jumpers physically found on the *C64 JoyKEY*, see document [firmware](https://github.com/tebl/C64-JoyKEY/blob/main/documentation/firmware.md) if you are looking for a description of software settings. Check out the table of contents below and jump directly to it if you are looking to use this device with a specific vintage system, note that this will mostly describe settings relevant to the [Default FW](https://github.com/tebl/C64-JoyKEY/blob/main/software/arduino/Joykey/) - the use of the [Autofire FW](https://github.com/tebl/C64-JoyKEY/blob/main/software/arduino/Autofire/) or the USB-mode is described separately.

- [Vintage systems](#1-vintage-systems)
  - [Amstrad CPC 464](#11-amstrad-cpc-464) *
  - [Atari 2600](#12-atari-2600)
  - [Atari 7800](#13-atari-7800) *
  - [Commodore 64](#14-commodore-64)
  - [Commodore 64GS](#14-commodore-64)
  - [Commodore VIC-20](#14-commodore-64)
  - [Commodore Amiga](#15-commodore-amiga)
  - [MSX](#16-msx) *
  - [Nintendo Entertainment System (NES)](#17-nintendo-entertainment-system-nes) *
  - [Sega Master System](#18-sega-master-system) *
  - [Sega Mega Drive](#19-sega-mega-drive) *
  - [ZX Spectrum +2/+3](#110-zx-spectrum-23) *
- [Autofire](#2-autofire)
- [USB-mode](#3-usb-mode)

*) Using C64 JoyKEY with the system may require an adapter to enable the use of more buttons, skip to the specific section for a description of steps needed to make it work. See [adapters](adapters.md) for details on the various adapters supplied as part of this project.

## 1> Vintage systems
Quite a lot of vintage computers and consoles support the classic Atari-style type of joystick (female DB9 connector on the end), the *C64 JoyKEY* is a variation of this type of joystick. Where things start to get weird is when everyone started adding two or more additional fire buttons to them, in many cases changing the what those signals are expected to look at. I found [icomp.de](http://wiki.icomp.de/wiki/DB9-Joystick) wiki to be particularly helpful as it includes a comparison for a lot of them, essentially giving an overview over what could be expected to function safely.

For all of these, both **DEFAULT_FW** are expected to be linked/jumpered - the Arduino Pro Micro is not needed when using the *C64 JoyKEY* and you should not disable the failsafe (which assumes Autofire or USB-mode).

Read on for details on various systems I've tested the controller with. Note that, as already mentioned, the module can be used as a standard Atari-style joystick with one fire button - the listed machines are mostly those that support or even require more than one fire button. As the [Atari 2600](#12-atari-2600) was the basis for most of these designs, I've chosen to include it for that very specific reason.

### 1.1> Amstrad CPC 464
Released in 1984, an entire two years after the Commodore 64 - it was a late arrival on the 8bit computer era. For some it was the computer they had and loved as a child, for many other it was a bit of a failiure as quite a lot of the games released were simple conversions from the ZX Spectrum. Unfortunately that meant that the excellent colour facilities of the computer went unused and too much of the game code went into emulating a different computer, leading to a rather poor experience. With the right game however, it was kind of awesome as long as you didn't expect much in the sound department.

![Amstrad CPC 464 System](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/cpc_system.jpg)

It did unfortunately also feature a rather proprietary approximation of the, now *de-facto*, standard Atari-style joystick connection. It will work as a single joystick parts with joysticks without any active electronics within them, meaning that everything with an auto-fire circuit as well as the *C64 JoyKEY* will not work with it. I've not had a look at the autofire-side of things, but I've put together an adapter solution in the form of the [CPC464 Joystick Splitter](https://github.com/tebl/CPC464-Joystick-Splitter) that'll give the two joystick ports you always wanted - as well as ensuring that the C64 JoyKEY functions without any issues.

![Amstrad CPC 464 Adapter](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/cpc_adapter.jpg)
![Amstrad CPC 464 Jumpers](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/cpc_jumpers.jpg)

### 1.2> Atari 2600
Released all the way back in 1977, it was one of the first mainstream video game consoles that allowed the user to change the games. Personally I never knew someone who had one, somehow the mention of Atari usually included: 
```
Atari, that's shit - isn't it?
- Childhood friend.
```
I grew up in the 80s, so certainly the 70s era of video game electronics spectacularly failed at presenting graphics similar to what the Commodore Amiga had. Nevertheless, it was the original home video console system established - to the degree that the joysticks used well into the 90s were known as standard Atari-style joysticks (digital, four directions and a single fire button). Now that I'm older I've grown rather fond of the old machine, it is just somewhat sad that they sold it well past their *sell-before* dates.

Anyway, back to the C64 JoyKEY. Support for a single fire button is built right in, as expected - only reason I've included this section is that the whole thing is a standard by itself. The jumper settings shown should work with just about anything that came with a DB9 connector and had a single fire button. Other systems that had extensive support for single-button Atari-style joysticks were the Commodore 64, Commodore Amiga, Kempstone joystick interface (ZX Spectrum), MSX, Atari 8 bit computers and 16 bit computers to mention a few.

![Atari 2600 System](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/a2600_system.jpg)
![Atari 2600 Jumpers](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/a2600_jumpers.jpg)

### 1.3> Atari 7800
Released in 1986, the successor wanted to take on the likes of Nintendo as well as the home computer market by launching an updated system that was fully backwards compatible with the Atari 2600. Unfortunately a sound chip wasn't added, so it sounded terrible by 80s standards. The controllers were also pretty damn terrible, which is why I've created an [adapter](https://github.com/tebl/C64-JoyKEY/tree/main/adapters/Atari%207800) so the C64 JoyKEY could be used instead. The adapter is only needed if you want support for two fire buttons.

![Atari 7800 Pro System](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/a7800_system.jpg)
![Atari 7800 Adapter](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/a7800_adapter.jpg)
![Atari 7800 Jumpers](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/a7800_jumpers.jpg)

### 1.4> Commodore 64
There are two variants for connecting up the C64 JoyKEY to a Commodore 64, including the GS and VIC-20. Variant A is probably the one you are looking for, it does however require connecting both of the DB9 cables in order to use all three buttons (depending on game support).

- [Commodore 64 (variant A)](#141-commodore-64-variant-a)
- [Commodore 64 (variant B)](#142-commodore-64-variant-b)

![Commodore 64](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/c64_system.jpg)
![Commodore 64 GS](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/c64gs_system.jpg)

#### 1.4.1> Commodore 64 (variant A)
A common way to add a second fire button to the Commodore was simply plugging in another joystick and using the fire button on that, this would be the same as pressing the space bar in many games. On the *C64 JoyKEY* connected up as shown below, that would actually be the third fire button. Fire2 is wired into the SID-chip, meaning that we can use it with games that expect a controller of the type that came with the Commodore 64GS.

![C64 variant A](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/c64_jumpers.jpg)

#### 1.4.2> Commodore 64 (variant B)
The Commodore 64 can support two additional fire buttons by connecting up signals to the SID-chip, via the POTX and POTY signals. This variant only required a single cable, but given that I've not seen any titles with support for the third fire-button you might as well just use variant A. Fire button 2 is the same on both variants and it is mostly used with Ocean cartridges and a few modern game releases.

![C64 variant B](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/c64_jumpers_b.jpg)

### 1.5> Commodore Amiga
One of my favourite systems, so good in fact that I always wanted an Amiga 500 - even though I had a 386/DX 25Mhz computer with VGA graphics. Mostly because at that point it always had nice graphics, and that sound was miles beyond anything the PC speaker could even dream of creating (Soundblaster only came into my house a few years later). So it would come to no surprise that I'd want to test out the *C64 JoyKEY* on my Commodore Amiga systems.

![Amiga System](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/amiga_system.jpg)

There are some caveats with the Amiga systems, for one the standard connector won't fit into the joystick port on the Amiga 500 so you'll want a straight [IDC to DB9 adapter](https://github.com/tebl/C64-JoyKEY/tree/main/adapters/IDC%20to%20DB9) for that - either that or you'll need to modify the connector in order to make it fit.

**NB!** The second caveat is that the second or even third fire button probably won't work on all games, or even any of them from the testing I've done. The reason for this is the polarity protections resistors added added at R1 and R2 - these are here to ensure you don't accidentally kill your Commodore 64 system by setting the jumpers wrong. So you'll need to make a choice here; install a piece of wire across these because you know what you're doing (jumper as shown below), or stay happy with a single button in your Amiga games (jumper like [Atari 2600](#12-atari-2600)).

![Amiga Jumpers](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/amiga_jumpers.jpg)

### 1.6> MSX

### 1.7> Nintendo Entertainment System (NES)
Nintendo Entertainment System, commonly referred to as the *NES*, is a console that doesn't really require an introduction. While it wasn't as popular around here, mainly for the fact that it wasn't a computer, it certainly has found its place among just about any collector. A somewhat furiating system to maintain for collectors today due to issues with the cartridge port, but when you want the full-size thing - there's no way around it. The original gamepad was actually quite good, but it's a bit cramped for my hands and so I made yet another [adapter](https://github.com/tebl/C64-JoyKEY/tree/main/adapters/NES) for the *C64 JoyKEY*, if only so that I'd have the option of using it. Also, it's surprisingly satisfying to play Super Mario with proper clicky keyboard switches! 

![Nintendo Entertainment System](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/nes_system.jpg)

Requires the sacrifice of an unoriginal extension cable, but in case someone is wondering - no original hardware was hurt in the making of this. For reference, the original controller that came with this system is still intact in its original box - ready at a few seconds notice, just in case the Nintendo-compliance department does a sudden inspection of my setup. A completed adapter including the relevant jumper settings on the *C64 JoyKEY*  is shown below, with this setup you'll have *SELECT* on the top switch as well as *START* on the adapter itself. With later revisions of the C64 JoyKEY you can disable the top switch, using the switches on the bottom-left corner instead for these functions.

![Nintendo Entertainment System Adapter](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/nes_adapter.jpg)
![Nintendo Entertainment System Jumpers](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/nes_jumpers.jpg)

### 1.8> Sega Master System
Released in 1986, this is probably my favourite console - if I was forced to pick something without a keyboard built into the case. I'm not completely convinced by the gamepads available though, so I took it unto myself to build an adapter [adapter](https://github.com/tebl/C64-JoyKEY/tree/main/adapters/Sega%20Master%20System) for it so that the C64 JoyKEY could be used instead. 

**NB!** This is not recommended when a pause mod has been installed in the system, the reason for this is that the key combinations used are easy to activate, usually by accident, when using the C64 JoyKEY (it's not dangerous, it'll just annoying as the system will pause every time the combination is activated).

![Sega Master System](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/sms_system.jpg)
![Sega Master System Adapter](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/sms_adapter.jpg)
![Sega Master System Jumpers](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/sms_jumpers.jpg)

### 1.9> Sega Mega Drive
The only console that was truly *mega*, doing whatever Ninten...don't! Apparantly that was mostly sports so I never bought one back in the day, then again most software for my IBM PC was available for the cost of a blank floppy so that might be why I never had much desire for the cartridge-based systems back then. For some reason the system was launched as the Sega Genesis in North America, but we try not to talk about those guys anymore.

Over to the actual system, mine is one version 1 - the one marked *high definition graphics* on the device itself. Now that I have an Everdrive for the system, I find myself playing on it more and more. More than likely, just because it has the definitive 16-bit home version of Out Run on it (observe the shiny red keycaps to match the iconic Ferrari Testarossa Spider). 

![Sega Mega Drive](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/smd_system.jpg)

I've gone ahead and made a [3-button adapter](https://github.com/tebl/C64-JoyKEY/tree/main/adapters/Sega%20Mega%20Drive) for the *C64 JoyKEY*, but note that as the system actually requires a fourth button - the *START* button - I added that to the adapter itself. Sega did however make their controller ports recessed into the case, so we also need to add a straight [IDC to DB9](https://github.com/tebl/C64-JoyKEY/tree/main/adapters/IDC%20to%20DB9) adapter in order to make the cable fit into the controller ports. [IDC to DB9](https://github.com/tebl/C64-JoyKEY/tree/main/adapters/IDC%20to%20DB9) *VCC_EN* must be linked in order to power the adapter.

![Sega Mega Drive Adapter](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/smd_adapters.jpg)
![Sega Mega Drive Jumpers](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/smd_jumpers.jpg)

### 1.10> ZX Spectrum +2/+3
Sinclair, having recently been acquired by their competitor - Amstrad - added joystick ports directly to their shiny new +2 and +3 computers, but in order to ensure the sale of branded Sinclair joysticks (SJS and the later SJS2) they changed the pinouts. This ensured that your run of the mill Atari-style joysticks didn't work, but as history would show the ever-present Kempston interfaces would instead remain the standard for gaming on the ZX Spectrum - leaving the ports mostly unused.

While I do not own an ZX Interface 2, the schematics found online seem to indicate that while they shared the same interface (as seen from the computer) - the ZX Interface 2 doesn't have the same shuffling of pinouts like the Amstrad produced machines. I would like to verify this, but that would require owning an Interface 2 - so please send me one, I promise to love and ultimately never give it up ([source](https://www.youtube.com/watch?v=dQw4w9WgXcQ)).

I do however own +2 and +3 computers that I've always wanted to have a got at using the built-in joystick ports on, so I've made an [adapter](https://github.com/tebl/C64-JoyKEY/tree/main/adapters/Sinclair) for this purpose. This can also be assembled so that you can use the adapter with any Atari-style joystick, not just the C64 JoyKEY. There is no support for using more than one joystick button on these interfaces, even if you use two adapters.

**NB!** If it wasn't entirely clear; you will only need this adapter when connecting up to the built-in joystick ports on the ZX Spectrum +2 or ZX Spectrum +3. Most other peripherals that came with joystick ports, more than likely a Kempston - used standard Atari-style joysticks and no adapter would be needed for those.

![Sinclair System](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/sinclair_system.jpg)
![Sinclair System Adapter](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/sinclair_adapter.jpg)
![Sinclair System Jumpers](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/sinclair_jumpers.jpg)

## 2> Autofire
See [Autofire FW](https://github.com/tebl/C64-JoyKEY/blob/main/software/arduino/Autofire/) for more information on using the device in Autofire-mode, note that it too has a failsafe-mode so you'll need to hold LEFT and RIGHT key on powerup to enable it (that way things are not accidentally activated until you're sure you've set the jumpers correctly). Autofires require that both of the **DEFAULT_FW** pads have **NOT** been linked/jumpered, this ensures that signals aren't also connected directly to your vintage system.

Using the autofire firmware assumes that the system will emulate a single-button joystick connected to a vintage system, the actual FIRE-buttons (FIRE1,2 and 3) will not be directly connected to the system and the Arduino will handle controlling the actual fire button signal sent to the vintage computer system.

![Autofire Configuration](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/autofire_jumpers.jpg)


# 2> USB-mode
The [Default FW](https://github.com/tebl/C64-JoyKEY/blob/main/software/arduino/Joykey/) can be used to connect the computer to a modern-ish computer, the device will present itself as either a keyboard or a joystick depending on the settings used. USB-mode supports all of the keys, but FIRE2/FIRE3 will be disabled unless you set the jumpers to what is shown below. USB-mode does not care about the two DEFAULT_FW jumpers, those just control the behavior when connected to a vintage system.

![USB System](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/usb_system.jpg)

As mentioned in the description for the firmware, there is a failsafe in place so that it will not be automatically activated when the board is connected to a computer over USB (you can change this behavior if you only intend to use it connected over USB). The failsafe is disabled by holding down the LEFT and RIGHT key when plugging in the device - you will have approximately 3 seconds to do this and you should hold them down until the SYS LED lights up.

![Magic combination](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/alternate_mode.jpg)
![USB Configuration](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/usb_jumpers.jpg)
