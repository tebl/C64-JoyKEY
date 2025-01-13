# 1> GP2040 Zero
This section of the documentation deals with how to get started with the [GP2040CE](https://gp2040-ce.info/)-firmware, and while the firmware has quite excellent documentation that I highly recommend that you spend time getting familiar with, it doesn't cover any specific implementation of it. What that means is that when you put together a controller using it, there are quite a lot of decisions that were made along the way that needs to match up to the configuration in order for things to function properly. In this document, I'll attempt to cover the things that you'll need when using it with either [C64 JoyKEY 2040](https://github.com/tebl/C64-JoyKEY/tree/main/C64%20Joykey%202040) or [Adapter 9 from 2040](https://github.com/tebl/C64-JoyKEY/tree/main/Adapter%209%20from%202040).

![Devices running GP2040CE](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/gp2040_zero_devices.jpg)

While the former is a joystick, in a novel form, intended for use with vintage systems via the use of adapters and cables, it can also be used with more modern systems via the addition of a Raspberry Pi Pico "Zero". The latter takes a vintage, or new in the case of the quite excellent ArcadeR joysticks, converting it for use with modern systems such as Raspberry Pi, or most of the later systems from Retro Games Lts (TheC64, TheA500, TheSpectrum etc). Both will show up on the connected system as a standard wired *Xbox-360 Controller* so compatibility appears to be quite good.

- [1> Introduction](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started.md)
- [2> Installation](#2-commodore-64)

# 1> Introduction
The Raspberry Pi Pico was created by the Raspberry Pi Foundation, also somewhat confusingly known everywhere for creating the Raspberry Pi boards. The difference between the two is that while the Raspberry Pi is an entire computer on a small board (SBC), a Pico on the other hand is a microcontroller like the Arduinos that most of are familiar with (with at least a decade of advances in technology between the two). The official Pico boards are quite large, and for that reason we're instead using a different version of it that doesn't include quite as many physical pins though in terms of power the two of them use the same chip. This variant is known as the *RP2040-Zero*, and this is the name I'll be using from this point on.

![RP2040-Zero](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/build/adapter9_2040/006.jpg)

I can only assume that in time there will be several more variants of these popping up, but the one created by *Waveshare* shown on the left seem to be the one listed on more reputable. The second one can be picked up from not quite so reputable places, but apart from the slight differences in quality - they seem to work exactly the same from what I've been able to see. When in doubt, buy more than one so that you'll have one as a spare.

# 2> Installation
Installation of the GP2040CE-firmware on a Raspberry Pi Pico, in any of its forms is quite easy to pull off. Before that you'll need to download a few things first, and the first of them is the [firmware](https://gp2040-ce.info/downloads/) itself. Note that you'll need to download the correct one for your board, and for any of the *RP2040-Zero* variants (including clones) you'll find the download link under the heading *Waveshare RP2040-Zero*. In addition I also recommend having the following files available:
- [flash_nuke.uf2](https://gp2040-ce.info/assets/files/flash_nuke-cde388d5530c9dcfd5394a0ca51009f2.uf2)
- [force_webconfig.uf2](https://gp2040-ce.info/assets/files/force_webconfig-347a1a8575da1ae314cf9ceb7df793bc.uf2)

Installing the firmware on any version of the Pico, is quite easy as all you need to do is to hold down the button marked *BOOT* when connecting it up to your computer. If all goes well, your computer should detect it as a new flash storage drive - and in the case of MS Windows should pop up an explorer window with its contents. Copying and then pasting a single file with the ".uf2"-extension should automatically flash the microcontroller for you without any additional steps being needed.

As for installing GP2040-CE, I recommend that the first thing that you flash it with it is the one listed as *flash_nuke* above. This takes care of ensuring that all config files are wiped off it first, this seems at least to be necessary on the clones though it's a process that only takes a second or two, so it is time well spent. After *flash_nuke* has completed its tasks, the explorer window should automatically open up again for you again. This time you'll paste in the expected GP2040-CE firmware, a file named something like *GP2040-CE_X.X.XX_WaveshareZero.uf2*, and it should take a considerably longer time to complete (around 30s).

After the copy process completes, the explorer window should disappear and if it doesn't immediately show up again - then we can only assume that everything has been installed as it should be. Disconnect the device before continuing on to the next step, configuring the device.

# 3> Configuration
GP2040-CE as previously mentioned includes a web-based interface for configuring just about anything, and while your initial experience of shock and horror in having to deal with all of it in order to just play around with your favourite joystick - you'll quickly find that it's quite intuitive. Just take it one step at a time, and know that if you completely mess it up - just follow the installation steps again to completely wipe it, that way you'll always find a way back to a working configuration. Here's what the interface looked like at the time of writing this:

![Configurator](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/gp2040/rp2040-zero/configuration.png)

As for how you can get into it, for that we need to hold down the switch marked "S2" when plugging it into your computer. When doing that it won't present itself as an Xbox-360 Controller, instead it'll look like a network device with a web server running on it:
- [http://192.168.7.1](http://192.168.7.1).

Open up that link in your browser, and you'll get the configurator - pretty amazing stuff if you ask me! Just make sure that you're holding down the right key, on your *C64 JoyKEY 2040* that's the second button from the left when looking at the front of the device. As for the *Adapter 9 from 2040*, that's the second to last button on the left side of the device (some faceplates will have this listed as *MENU*).

**NB!** If you find that you can't get into the configuration, there might be an issue with the configuration stored on the device. The easiest way around that particular issue is to hold down the *BOOT*-button on the *RP2040-Zero* when connecting it up to your computer, when it pops up with the same explorer window as it showed during the installation - paste *force_webconfig.uf2* into the window. Like we saw previously, the window should disappear and as long as everything works as it should, you should now be able to use the [configurator](http://192.168.7.1).

Continuing on with the actual configuration for either devices, the recommendation is that for now you skip the first menu option labelled "Settings", as that's more relevant for us once everything has been set up. Instead we'll move onto "Configuration" instead, working our way down the list (a few we'll skip entirely).

## 3.1> Pin mapping
While GP2040-CE will mostly present itself as a wired *Xbox-360 Controller* to the system it is connected to, but the how each button is mapped to the physical pins on the *RP2040-Zero* is completely customizable by setting up different pin mappings. More on the "mostly"-part later, but let's just move on for now by starting with the one I'm primarily using as the primary profile:

![TheA500](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/gp2040/rp2040-zero/the_a500.png)

As we're dealing with a piece of PCB we can't just move something anywhere, and expect it to work - the physical pins marked PINXX already go somewhere specific. What we can do is choose the logical function that they have, so if you want to swap B1 and B2 then you can just do that.

As this is probably your first time looking at this interface, just work your way down the list and set the functions like how I've done it. Make sure to delete the ones that aren't explicitly listed here, that also includes those marked *Assigned to addon* (they will be assigned at a later step in the configuration process). 

Click *Save* when satisfied with your changes. It'll tell you to reboot the controller for the changes to take effect, but instead we'll just move on with the process. The first profile created will often be referred in the official documentation as your primary profile, and you can use the interface to add a few more of them. Here are some of my suggested settings, with the profile numbers that I've set them to.
1. [TheA500](https://github.com/tebl/C64-JoyKEY/blob/main/gallery/gp2040/rp2040-zero/the_a500.png)
2. [TheC64](https://github.com/tebl/C64-JoyKEY/blob/main/gallery/gp2040/rp2040-zero/the_c64.png)
3. [Evercade](https://github.com/tebl/C64-JoyKEY/blob/main/gallery/gp2040/rp2040-zero/evercade.png)

TheSpectrum also uses the settings as for TheA500, and I expect that The400 works pretty much the same. Evercade is almost the same, but it prefers to use *B2* as the primary fire button so for that system I tend to swap *B1* and *B2*. TheC64 is pretty much an oddball at is does not accept GP2040-CE when presented as an *Xbox-360 Controller*, or what we commonly refer to as *Xinput*-mode (more on that later), and we instead need to have it seen as a Nintendo-controller - explaining why all of the pin mappings are completely scrambled from all of the other profiles.

Beyond all of that, these are just my recommendation for getting started. Feel free to play around with it, just maybe do that once everything is working like I intended.

## 3.2> Peripheral Mapping