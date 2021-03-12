# Faceplates
The *C64 JoyKEY* will have a selection of faceplates, these are primarily just here to make the device a bit prettier by hiding the actual electronics. Secondly it adds some rigidity to the design, quite possibly making it less likely to fail after heavy use. Check out [faceplate](https://github.com/tebl/C64-JoyKEY/tree/main/faceplates)-section for designs available, but as always you can find these and other PCBs on [PCBWay shared projects](https://www.pcbway.com/project/shareproject/?tag=C64%20JoyKEY). For obvious reasons, the ones based on other peoples artwork will not be included (see [making your own]((#2-making-your-own)) for some hints on how you can create your own instead). 

- [1> Faceplate variations (A/B)](#1-faceplate-variations-ab)
  - [1.1> Keycaps A](#11-keycaps-a)
  - [1.2> Keycaps B](#12-keycaps-b)
- [2> Making your own](#2-making-your-own) 
  - [2.1> Editing artwork](#21-editing-artwork) 
    - [2.1.1> Bitmap to Component Converter](#211-bitmap-to-component-converter)
    - [2.1.2> Pixel converter](#212-pixel-converter)
  - [2.2> Adding the artwork to PCB](#22-adding-the-artwork-to-pcb)
  - [2.3> Ordering PCBs](#23-ordering-pcbs)
    - [2.3.1> Generate new Gerber files](#231-generate-new-gerber-files) 
    - [2.3.2> Ordering from PCBway](#232-ordering-from-pcbway)
  - [2.4> Show them to the world](#24-show-them-to-the-world) 

# 1> Faceplate variations (A/B)
These generally come in two different variations, A and B with a number added to separate the various designs. The A version has a larger PCB cutout that should allow you to use most of Cherry MX-compatible keycaps of the kind that descends down past the actual switch (low/medium profile), if you're in doubt this is the version to get. The B designs have a smaller cutout, but requires the use of keycaps that don't descend so far down (high profile).

A selection of B-variations I've used at some point can be seen below.

![](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/faceplates_b.jpg)

## 1.1> Keycaps A
The keycaps pictured below were bought from AliExpress though you'll undoubtedly find them on any site that sells similar Chinese goods, a likely candidate is Wish and ebay. I don't want to include a direct link to a listing as those are bound to disappear by the time anyone reads this. The blue ones (also comes in silver and gold I thing) were listed as *low profile Cherry MX compatible gaming* keycaps, usually also listed as mechanical keyboard keycaps. The ones on the right were listed as *PBT 1u gaming Cherry MX* keycaps, available in several colours - if you want to add your own labels these are the ones I'd recommend. Both were in the 10$ price range.

![A variety 1](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/keycaps_a1.jpg)
![A variety 2](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/keycaps_a2.jpg)

## 1.2> Keycaps B
These I fell in love with when I saw them, listed as *round steampunk typewriter keycaps* - I thing I got a complete set for a keyboard for under 10$. I think these are what are called *high profile* keycaps, but I'm a bit fuzzy the specifics as just about everything I've bought have been badly-described Chinese products. The ones shown below are the ones I have, and as you might've guessed I designed a new faceplate so that there wouldn't be such a huge gap.

![B variety 1](https://github.com/tebl/C64-JoyKEY/raw/main/gallery/keycaps_b1.jpg)

# 2> Making your own
Making your own faceplates requires you to already have an installation of [KiCAD 5](https://kicad.org/) already set up and ready to go, it's a free open source package. You will need a downloaded copy of all of the *C64 JoyKEY* project files, you'll find those on [github.com/tebl/C64-JoyKEY](https://github.com/tebl/C64-JoyKEY) - the files can be downloaded by clicking the green *Code* button ot the page, then select *Download ZIP* from the resulting menu. Unzip it somewhere that you'll be able to find later.

The next part is to draw up some suitable 1-bit artwork, this is because PCBs really only have a single silkscreen colour and there are no gradients available though you would still have the option to do dithering as was very common with comic books and newspapers.  For converting the png image into a module that KiCAD can use, you generally have two options depending on the effect that works best with your artistic creation - these will be described separately. But I'm getting ahead of myself here, and for that we need do some artwork editing.

## 2.1> Editing artwork
Using an image editor like Gimp, you can set up this mode using *Image --> Mode --> Indexed... --> Use black and white (1-bit) palette* - note however that KiCAD doesn't handle transparancy, so ensure that the background is set to either black or white. When you're happy with the results, or you just want to see how it'll look on a PCB, use *File --> Export as...* and give it a name with the extension *png*. If you're not already familiar with Gimp, you're probably not going to have a lot of fun doing this - I'd just recommend using the *Paint*-application on Windows for simple conversions or editing.

With some artwork ready to go, we can begin converting it to a more KiCAD friendly format - refer to either of the two following sections for instructions on how to do this. You'll probably have to go back and forth, so don't be surprised if you'll have to do this over a few attempts at getting things right.

### 2.1.1> Bitmap to Component Converter
The conversion tool built into KiCAD, *Bitmap to Component Converter*, really doesn't like sharp edges - so it'll try to smooth and make all edges a nice rounded finish - which may or may not be a good thing depending on what you want.

The conversion tool is started from the main KiCAD project menu, it's the one with a green *"a"* on it (for some reason). Start it up and click *Load bitmap*, select your image - flip over to the *Black&White Picture* tab to see a preview of what the result'll look like (if everything is blank, then you probably need to get rid off the transparant background).

For the resolution, the easiest would be if you use the same DPI setting as the original picture to avoid scaling, but as the result'll be nice and rounded it's not as important. Play around with these values until the indicated size in millimeters is something that'd fit nicely into your PCB area. Click export and save the resulting *mod*-file to the directory *common/modules/artwork.pretty*. Generally, as KiCAD by itself is not able to scale footprints we'll need to go a bit back and forth until you can find the size you want to use.

### 2.1.2> Pixel converter
The second option, one that is probably more suited to the kind of artwork where you want the pixelated look is using a script to convert the image to a bunch of square - mostly without a single smoothed edge in sight. Personally this is the one I prefer to use, as it is perfectly suited for artwork that would directly match the original 8bit source material. Thankfully we don't have to actually deal with the whole script part though, all you need to do is to go to [img2mod.wayneandlayne.com](http://img2mod.wayneandlayne.com/).

Use *Choose File* to select your png-file, click the *invert* checkmark if you need it and finally click upload to get a preview version of the file. Use browser back-button to return to the form, then deselect the *Preview* checkmark to download a copy of a converted mod-file, move it into to the directory *common/modules/artwork.pretty*.

Changing the scale will change the size of each "pixel" once converted, but for now just use 0.5 - we'll come back to it later once we actually see how it looks on the PCB. Generally, as KiCAD by itself is not able to scale footprints we'll need to go a bit back and forth until you can find the size you want to use.

## 2.2> Adding the artwork to PCB
At this point we should be ready to test out the design you've been working on. Start by opening up either one of the faceplate projects in KiCAD, either *C64 Joykey Faceplate A1* or *C64 Joykey Faceplate B1*, depending on the type of keycaps you're going to be using - [1> Faceplate variations (A/B)](#1-faceplate-variation-a-b). Start up *PCB Layout Editor* (often referred to as *PCBnew*) from the main project menu, you should now get the whole drawing of the faceplate on the screen, the yellow lines indicating the physical dimensions of the resulting PCB.

Delete or add any of the silkscreen components you do not want, such as text or images that have somehow been left there from the last time I made some changes to it. Use *Place --> Footprint* to add the artwork, but it'll take up to a couple of minutes to load everything so be patient at this point and don't despair if it it's seemingly taking forever. When it's ready, find the artwork in the section named *artwork* and double-click it in the listing to the right to add it to the PCB. Move it around so that you're happy with the placement (click fooprint and press *m* to use the move command).

At this point you'll probably find that the footprint is either too small or too large, revisit sections 2.1.1 or 2.1.2 to tweak the size - save and overwrite the footprint file. The version already on the PCB won't automatically update to reflect this, so you'll have to do this manually by editing it (click footprint and press *e*). Click the button labelled *Update Footprint from Library*, then click *Update* in the resulting dialog and then finally close it. Repeat as needed until satisfied.

If you want to get a feeling for how the PCB'll look, you can use *View --> 3D Viewer* to get a preview. Note however that the viewer doesn't seem to understand how to subtract any parts of the image that's not within the physical edges of the PCB, so either remove it from the picture when you get the sizing correct or just ignore that for now (PCBs will still look great as those parts will be physically removed at the factory).

## 2.3> Ordering PCBs
What to do from this point on will differ somewhat, based on where you will order the PCBs, but as I use PCBway the description will for the most part reflect the settings required there. If you don't already have an account there, please use this [link](https://www.pcbway.com/setinvite.aspx?inviteid=88707) to get a 5$ discount and help me at the same time. Doing it this way gives me a small discount on future hardware revisions, allowing me to keep sharing things like this instead of just keeping them for myself.

### 2.3.1> Generate new Gerber files
Back to KiCAD again, and you should still be in the *PCB Layout Editor*. We're now going to create updated Gerber files in the format expected by [pcbway.com]((https://www.pcbway.com/setinvite.aspx?inviteid=88707)), this is done using *File --> Plot ...* - ideally everything should already be set up for you. Ensure that under *Plot format*, it is set to *Gerber* and that under *Gerber options* there is a checkmark on *Use Protel filename extensions* - output directory should either be left on *export/* or set somewhere that you'll be able to find later. Generate the files by clicking the *Plot* button, then click on *Generate Drill Files...* - here you should make sure that it is set to the same output directory and that there is a checkmark in front of *Minimal header* under *Drill File Format*. Click the *Generate Drill File* button and you should have mostly everything you need from KiCAD.

Web sites usually want all of the exported files as a ZIP-file, so just navigate over to the export folder you were supposed to put somewhere that you could find. Select all files and just send to *Compressed (zipped) folder* if you're on windows, any other platform and you're expected to know how to do this by yourself.

### 2.3.2> Ordering from PCBway
Navigate on over to the PCBway web site, specifically the [PCB Instant Quote](https://www.pcbway.com/orderonline.aspx) page. Enter the dimensions as 100mm by 75mm, set quantity to 5 in order to keep shipping costs low (10 is usually the same price, but there is only so many one can use at a time). Under solder mask you can select any of the top row colours to keep things at the 5$ pricetag (ones below it are significantly more expensive).

Click on *Calculate* on the right hand side to calculate costs, update your location to get something more realistic. If it looks good, just click on *Save to cart* to go on to the next step. At the next part of the ordering process, you'll need to finally upload the zipped Gerber files by clicking on *+Add Gerber File* and adding it to the site. What happens at this point is that you'll need to wait for someone at PCBway.com to manually verify that everything looks OK, this'll take everything from a few minutes to hours depending on how much time they've got on their hands.

Once the review has been completed, you can order the PCBs from them and actually pay for shipping and so forth. Remember to use the 5$ discount coupon if you're a new user to the site, but have a browse around the site for any other [shared projects](https://www.pcbway.com/project/member/shareproject/?bmbno=04C9EDC7-08B5-43) you might like - especially the actual [C64 JoyKEY module](https://www.pcbway.com/project/shareproject/C64_JoyKEY__Module_.html) that you'd need in order to use with your fancy new faceplates. Have a look on [C64 JoyKEY](https://www.pcbway.com/project/shareproject/?tag=C64%20JoyKEY) for all of the shared projects relating to this specific project.

## 2.4> Show them to the world
When you get the new PCBs, please show them off to the world using your favourite social platform (whichever that may be). I do these projects for fun, and it's even more fun seeing my hobby projects being used by people.