# From Zero to GP2040
This section of the documentation deals with how to get started with the [GP2040CE](https://gp2040-ce.info/)-firmware, and while the firmware has quite excellent documentation that I highly recommend that you spend time getting familiar with, it doesn't cover any specific implementation of it. What that means is that when you put together a controller using it, there are quite a lot of decisions that were made along the way that needs to match up to the configuration in order for things to function properly. In this document, I'll attempt to cover the things that you'll need when using it with either [C64 JoyKEY 2040](https://github.com/tebl/C64-JoyKEY/tree/main/C64%20Joykey%202040) or [Adapter 9 from 2040](https://github.com/tebl/C64-JoyKEY/tree/main/Adapter%209%20from%202040).

![Devices running GP2040CE](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/gp2040_zero_devices.jpg)

While the former is a joystick, in a novel form, intended for use with vintage systems via the use of adapters and cables, it can also be used with more modern systems via the addition of a Raspberry Pi Pico "Zero". The latter takes a vintage, or new in the case of the quite excellent ArcadeR joysticks, converting it for use with modern systems such as Raspberry Pi, or most of the later systems from Retro Games Lts (TheC64, TheA500, TheSpectrum etc.). Both will show up on the connected system as a standard wired *Xbox-360 Controller* so compatibility appears to be quite good.

- [1> Introduction](https://github.com/tebl/BulkyModem/blob/main/documentation/getting_started.md)
- [2> Installation](#2-commodore-64)
- [3> Configuration](#3-configuration)
  -  [3.1> Pin mapping](#31-pin-mapping)
  -  [3.2> Peripheral Mapping](#32-peripheral-mapping)
  -  [3.3> LED Configuration](#33-led-configuration)
  -  [3.4> Display Configuration](#34-display-configuration)
- [4> Settings](#4-settings)
  -  [4.1> Input Mode Settings](#41-input-mode-settings)
  -  [4.2> Gamepad Settings](#42-gamepad-settings)
  -  [4.3> Boot Input Modes](#43-boot-input-modes)
  -  [4.4> Hotkey Settings](#44-hotkey-settings)
- [5> The rest....](#5-the-rest)

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
GP2040-CE as previously mentioned includes a web-based interface for configuring just about anything, and while your initial experience of shock and horror in having to deal with all of it in order to just play around with your favorite joystick - you'll quickly find that it's quite intuitive. Just take it one step at a time, and know that if you completely mess it up - just follow the installation steps again to completely wipe it, that way you'll always find a way back to a working configuration. Here's what the interface looked like at the time of writing this:

![Configurator](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/gp2040/rp2040-zero/configuration.png)

As for how you can get into it, for that we need to hold down the switch marked "S2" when plugging it into your computer. When doing that it won't present itself as an Xbox-360 Controller, instead it'll look like a network device with a web server running on it:
- [http://192.168.7.1](http://192.168.7.1).

Open up that link in your browser, and you'll get the configurator - pretty amazing stuff if you ask me! Just make sure that you're holding down the right key, on your *C64 JoyKEY 2040* that's the second button from the left when looking at the front of the device. As for the *Adapter 9 from 2040*, that's the second to last button on the left side of the device (some faceplates will have this listed as *MENU*).

**NB!** If you find that you can't get into the configuration, there might be an issue with the configuration stored on the device. The easiest way around that particular issue is to hold down the *BOOT*-button on the *RP2040-Zero* when connecting it up to your computer, when it pops up with the same explorer window as it showed during the installation - paste *force_webconfig.uf2* into the window. Like we saw previously, the window should disappear and as long as everything works as it should, you should now finally be able to use the [configurator](http://192.168.7.1).

Continuing on with the actual configuration for either devices, the recommendation is that for now you skip the first menu option labelled "Settings", as that's more relevant for us once everything has been set up. Instead we'll move onto "Configuration" instead, working our way down the list (a few we'll skip entirely).

**NB!** The software isn't modelled after an Apple-product, each page has its own *Save*-button and you need to click it in order to actually save anything. Clicking over to a different section of the configuration will cause it to forget any changes that you've made to it.

## 3.1> Pin mapping
While GP2040-CE will mostly present itself as a wired *Xbox-360 Controller* to the system it is connected to, but the how each button is mapped to the physical pins on the *RP2040-Zero* is completely customizable by setting up different pin mappings. More on the "mostly"-part later, but let's just move on for now by starting with the one I'm primarily using as the primary profile:

![TheA500](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/gp2040/rp2040-zero/the_a500.png)

As we're dealing with a piece of PCB we can't just move something anywhere, and expect it to work - the physical pins marked PINXX already go somewhere specific. What we can do is choose the logical function that they have, so if you want to swap B1 and B2 then you can just do that.

As this is probably your first time looking at this interface, just work your way down the list and set the functions like how I've done it. Make sure to delete the ones that aren't explicitly listed here, that also includes those marked *Assigned to addon* (they will be assigned at a later step in the configuration process). 

Click *Save* when satisfied with your changes. It'll tell you to reboot the controller for the changes to take effect, but instead we'll just move on with the process. The first profile created will often be referred in the official documentation as your primary profile, and you can use the interface to add a few more of them. Here are some of my suggested settings, with the profile numbers that I've set them to.
1. [TheA500](https://github.com/tebl/C64-JoyKEY/blob/main/gallery/gp2040/rp2040-zero/the_a500.png)
2. [TheC64](https://github.com/tebl/C64-JoyKEY/blob/main/gallery/gp2040/rp2040-zero/the_c64.png)
3. [Evercade](https://github.com/tebl/C64-JoyKEY/blob/main/gallery/gp2040/rp2040-zero/evercade.png)

TheSpectrum also uses the settings as for TheA500, and I expect that The400 would work pretty much the same way. Evercade is similar, but it prefers to use *B2* as the primary fire button so for that system I tend to swap *B1* and *B2*. TheC64 is pretty much an oddball at is does not accept GP2040-CE when presented as an *Xbox-360 Controller*, or what we commonly refer to as *Xinput*-mode (more on that later), and we instead need to have it seen as a Nintendo-controller - explaining why all of the pin mappings are completely scrambled from all of the other profiles.

Beyond all of that, these are just my recommendation for getting started. Feel free to play around with it, just maybe not do that until everything is working like I intended for them to.

## 3.2> Peripheral Mapping
![Peripheral Mapping](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/gp2040/rp2040-zero/peripheral_mapping.png)

The section dedicated to peripheral mapping is mostly where we configure which physical pins have been set aside for communicating with the display, if we even chose to have one at all. On both of the devices featured in this document I've only made provisions for an I2C-display, and given the usage of the *RP2040-Zero*, the natural pins to use in this case will be given as shown below. Enable *I2C1*, set *SDA* on pin 26, *SCL* on pin 27 and hit *Save* at the bottom of the screen.

## 3.3> LED Configuration
**NB!** Function only present on [C64 JoyKEY 2040](https://github.com/tebl/C64-JoyKEY/tree/main/C64%20Joykey%202040)

![Player LEDs](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/gp2040/rp2040-zero/player_leds.png)

This section mostly deals with assigning addressable LEDs to individual buttons on a custom arcade cabinet or stick, but in the case that you're configuring a [C64 JoyKEY 2040](https://github.com/tebl/C64-JoyKEY/tree/main/C64%20Joykey%202040) then the section labelled *Player LEDs* will be of interest to us. Here I've used physical pin 15 as a way to control the brightness of the backlight, but because we're driving it through a transistor then the signal becomes inverted. A GP2040-CE controller is normally set up as *Player 1* by default, taking the inverted value into account then the backlight will turn on if we use that pin with with players 2-4. I hope that the firmware ends up with a feature for inverting it sometime in the future, but for now it at least works in a way that we can control.

## 3.4> Display Configuration
![Display Configuration](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/gp2040/rp2040-zero/display_configuration.png)

Here we'll be configuring the usage of displays connected to the device, requiring that we've already taken the time to set up the physical pins for *I2C* earlier in [Peripheral Mapping](#32-peripheral-mapping). The type of display should be automatically detected by the system, so we mainly only need to enable it.

As for what's normally displayed on it during normal usage, many profiles can be selected under *Layout Options* and I can only assume that there are some that are more suited for our purpose. More on that once I eventually find one of them.

You can enable a custom splash screen as, for that you also need to enable it by setting *Splash Mode*. While I don't expect you to actually use on your devices, I've included an image file for you at [/software/gp2040/bootscreen.png](https://github.com/tebl/C64-JoyKEY/blob/main/software/gp2040/bootscreen.png) - if only so that you can have that as a starting point when making your own in any basic image editing software.


# 4> Settings
With the configuration already taken care, we can move onto *Settings*. This is more in the category of how we're choosing to use the controller right now, and in an indirect way what we're intending to use it with.

![Settings](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/gp2040/rp2040-zero/settings.png)

## 4.1> Input Mode Settings
 *Current Input Mode* is one that we've briefly covered earlier, but for most systems we set it to *Xinput* as that means that the controller will be presented to your system as a wired *Xbox-360 Controller*. It's a widely supported controller, and if it supports different USB-controllers this is likely to be one of them.

![Settings](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/gp2040/rp2040-zero/input_mode_settings.png)

Except in the case of *TheC64 Mini* where it does absolutely nothing, but we'll get around that by setting it to *Nintendo* instead (for some reason only Retro Games Ltd would possibly know). Unfortunately that scrambles all of the button locations, but as we've planned ahead and already created a separate profile for it in [Pin Mapping](31-pin-mapping) we can choose to unscramble them again. In the next section.

## 4.2> Gamepad Settings
If you came straight here from [Input Mode Settings](#41-input-mode-settings), then the option you're looking for is simply called *Profile* at the bottom. If you're intending to use my devices with various devices, you mostly need to think of the previously discussed *Input Mode* as having a tightly coupled relationship with the selected *Profile* - one generally not working by itself, but perfection when taken together. If you're just using it as a way to optimize your layouts for certain games on a specific system, then just do that  and ignore my largely non-sensical ramblings.

![Gamepad Settings](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/gp2040/rp2040-zero/gamepad_settings.png)

If you were to compete in any way, then *SOCD Cleaning Mode* is apparently a huge requirement to be allowed to even participate. The purpose of this is when you have something like the [C64 JoyKEY 2040](https://github.com/tebl/C64-JoyKEY/tree/main/C64%20Joykey%202040) then you're able to perform actions that wouldn't physically be possible on a normal joystick, for example pushing the *LEFT* and *RIGHT* direction at the same time. This would cause some older games to start glitching out. I just play old games by myself, so making sure that *UP* always works makes more sense to me.

## 4.3> Boot Input Modes
![Boot Input Modes](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/gp2040/rp2040-zero/boot_input_modes.png)

Here we've got a listing of the buttons that can be held when powering on the controller, to have it automatically switch to that [Input Mode](41-input-modem-settings) for you. It doesn't happen automatically, you need to hold the button for roughly 20 seconds before it takes effect.

**NB!** Confusingly your selected [Pin Mapping](31-pin-mapping) profile as selected in [Gamepad Settings](#42-gamepad-settings) will generally mean that at least some of these buttons have physically moved around on you. For that reason I highly recommend using the web interface when setting things up, especially if you don't have a screen installed on the device itself.

## 4.4> Hotkey Settings
![Hotkey Settings](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/gp2040/rp2040-zero/hotkey_settings.png)

These shortcuts require holding down the *Function*-key on your device, in the case of the [C64 JoyKEY 2040](https://github.com/tebl/C64-JoyKEY/tree/main/C64%20Joykey%202040) this is the right-most key on the front of the device. On [Adapter 9 from 2040](https://github.com/tebl/C64-JoyKEY/tree/main/Adapter%209%20from%202040) this will be the top button on the right row of keys. You can set them as you like, but for the most part it helps to think of them as a way to use seldom used buttons that you physically don't actually have.

*S1*/*S2* is commonly thought of as *START*/*SELECT*, by holding down *Function* these double up as the *Home* and *Share* buttons as commonly found on Playstation-controllers. I also tend to set a few longer key combinations to switch between different [Pin Mapping](31-pin-mapping)-profiles.

# 5> The rest....
I think that's just about anything I can think about mentioning at this point, at least in terms of getting started with using GP2040-CE with any of these two devices. As for what comes next I believe that you'll need to take your time learning how at least some of it works, but if you've made it to this point you're already 99% there anyway.

![TheSpectrum](https://raw.githubusercontent.com/tebl/C64-JoyKEY/refs/heads/main/gallery/build/adapter9_2040/031.jpg)

As for testing things out, do note that any kind of *Mini*-system will generally not be the place to start - instead connect to your modern computer,  load up [Gamepad Tester](https://hardwaretester.com/gamepad) and start testing it out. Note that it needs to be in *Controller*-mode when doing it, meaning that you should just connect the cable without holding down any of the buttons.

For anything not already covered in any shape or form, consider the following resources:
- [GP2040-CE Homepage](https://gp2040-ce.info/)
- [GP2040-CE Documentation](https://gp2040-ce.info/web-configurator/)