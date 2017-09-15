# An interface board for the Broadcom development platform also known as the Raspberry Pi

## Table of Contents
1. [Student Sense Hat Specifications](#student-sense-hat-specifications)
2. [Student Sense Hat Electronic Design Files](#student-sense-hat-electronic-design-files)
2. [Student Sense Hat Assembly](#student-sense-hat-assembly)
3. [Student Raspberry Pi Image Creation](#student-raspberry-pi-image-creation)
3. [Student Sense Hat Test Code](#student-sense-hat-test-code)
4. [Enterprise Wi-Fi](#enterprise-wi-fi)

![Image of Prototype](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/SSHrev05.jpg)

### Student Sense Hat Specifications

NOTE: This mostly through hole design is pin compatible with original mostly surface mount sense hat design which is on the devices in the Humber Parts Crib. The Fall 2017 design is in [Fritzing](https://github.com/six0four/StudentSenseHat/blob/master/electronics/StudentSenseHatV05.fzz) while the Fall 2016 design was in [Eagle](https://github.com/vladporcila/ModularSenseHatStripped), if curious, take a look at using the [Sparkfun Cam file](https://learn.sparkfun.com/tutorials/using-eagle-board-layout/generating-gerbers). Once you have recieved your PCB the kit looks something like the following photo.

![Kit Bag](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/kitbag.jpg)

For a list of materials please download the [Excel](https://github.com/six0four/StudentSenseHat/blob/master/electronics/StudentSenseHatV05_bom.xlsx) file in the repository.

The more interesting components consist of:

1.  1 bidirectional LED

2.  DDS3231S IC RTC Clk/Calendar I2C 16-SOIC
    <http://www.amazon.com/Donop-DS3231-AT24C32-precision-Arduino/dp/B00HCB7VYS>

3.  4 channel 8 bit a/d, 1 channel d/a PCF8591T I2C-Bus D/A CONVERTER
    <http://www.modmypi.com/raspberry-pi/breakout-boards/seeed/raspberry-pi-adda-expansion-board>
    https://www.creatroninc.com/product/pcf8591-8-bit-i2c-adc-dac/

4.  Temperature, humidity, pressure sensor. SparkFun Atmospheric Sensor Breakout

    -   BME280 <https://www.sparkfun.com/products/13676>

5.  One optional surface mount resistor. 
	
###### Additional items that are only added to those devices in the Humber Parts Crib

1.  Humber sense hat eeprom for i2c id \<https://www.sparkfun.com/products/525
    https://www.adafruit.com/product/1895\>

2.  16 I/O pins MCP23017SO I/O Expander I2C
    <https://www.adafruit.com/products/732>

3.  Breadboarding area

![Image of Crib Pi](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/cribpionly.jpg)

### Student Sense Hat Electronic Design Files

1.  The Fritzing file is available here: https://github.com/six0four/StudentSenseHat/tree/master/electronics/StudentSenseHatV05.fzz
2.  It has a breadboard view:
![Image of breadboard view](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/electronics/StudentSenseHatV05_bb.jpg)
Following the [best practices](https://wiki.creativecommons.org/wiki/Best_practices_for_attribution#Examples_of_attribution):
This work is a derivative of "http://fritzing.org/parts/" by [Fritzing](http://fritzing.org/), used under [CC:BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/).
3.  It has a schematic view:
![Image of schematic view](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/electronics/StudentSenseHatV05_schem.jpg)
This work is a derivative of "http://fritzing.org/parts/" by [Fritzing](http://fritzing.org/), used under [CC:BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/).
4.  It has a PCB view:
![Image of PCB view](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/electronics/StudentSenseHatV05_pcb.jpg)
This work is a derivative of "http://fritzing.org/parts/" by [Fritzing](http://fritzing.org/), used under [CC:BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/).
6.  A Bill Of Materials can be exported: [BOM](https://github.com/six0four/StudentSenseHat/blob/master/electronics/StudentSenseHatV05_bom.xlsx).
7.  As well as Gerber files: [RS-274X](https://github.com/six0four/StudentSenseHat/blob/master/electronics/Gerber_RS-274X).

### Student Sense Hat Assembly

1. Please get started by ensuring that you have reviewed the [six 15 second soldering videos](https://radiojove.gsfc.nasa.gov/telescope/soldering.htm) and can comment on them. (If you are into materials, look up tin pest and tin whiskers.)
2. Work through as much of this set of instructions as possible. (Feel free to drop through the Humber College Institute of Technology & Advanced Learning North Campus Prototype Lab in J233 for additional guidance both before and after class.)
![Prototype Lab](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/IMG_20170616_184112490_HDR.jpg)
3. For additional soldering guidance such as surface mount and desoldering:
	1. Watch some [YouTube Videos](https://www.youtube.com/watch?v=BLfXXRfRIzY&list=PLQ32vZrF5U2lFOJTtZDytBWBYVLNp4RYz).
	2. Be sure to wear safety glasses and consult an expert regarding safety, you can even start at your [local hackerspace](https://wiki.hackerspaces.org/List_of_Hackerspaces) (Ideally working towards IPC J-STD-001 Requirements for Soldered Electrical and Electronic Assemblies).
4. Please remember your eyewear (safety glasses if you don't regularly wear glasses) and select a seat in J232.
![Image of lab station](https://raw.githubusercontent.com/six0four/MicroRover/master/images/1.1j232station.jpg) 
5. Turn on the computer under the desk on the left side.
6. Note the red power switch to the back right side of the workstation that controls the power to the monitor, overhead light, and test equipment.
7. Also note the under desk grounding strap jack for wrist straps - Electronics (ELIC) students must buy the $4.99 wrist straps while both CENG and ELIC students are to have the $4.99 safety glasses.
8. When soldering move the extraction arm flow control towards the straight through symbol as it is in the photo below.
9. The sponge in the soldering station can be moistened at the sink in J233. 
1. Start with components kit:  
![Image of Prototype](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/componentskit.jpg)
1. Optional: try out your kit on your breadboard.
![Image of Prototype](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/bbphoto.jpg)
2. Create schematic.
3. Create board add photos of equipment and guide from 555 timer/prototype lab bb/plab I drive.
4. At this stage you should have:
![Image of Prototype](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/componentsandpcb.jpg)
5. Decide whether you will be attempting the optional surface mount resistor.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/05.jpg)
6. Or whether you will be going with the through hole resistor.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/02.jpg)
6. Place resistors in corresponding locations:
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/06.jpg)
7. Bend the leads to hold them in place.  
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/07.jpg)
8. Solder the resistors from the bottom.  
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/08.jpg)  
9. Add flux if having trouble but, do not depress the end of the flux pen, just touching it is enough.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/09.jpg)
10. Solder the resistors from the top.  
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/10.jpg)
11. Trim and keep excess leads (hold onto them while cutting to not allow them to become projectiles).
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/11.jpg)
7. Place via wires (can be stripped solid core wire or just leftover cut off resistor/LED leads) in corresponding locations:
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/12.jpg)
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/13.jpg)
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/14.jpg)
15. Solder vias.  
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/15.jpg)
16. Trim the excess via leads.  
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/16.jpg)
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/17.jpg)
18. Place MOSFETS and LED (N.B. the LED's longer leg is the same as on a red LED. Thus, when oriented the same way as the fritzing diagrams the red/green will be the opposite of those in the parts crib. Which way you put it is in your hands.)
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/18.jpg)
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/19.jpg)
20. Solder one pin of each MOSFET only from bottom side, semiconductor devices are heat sensitive.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/20.jpg)
21. Solder another pin of each MOSFET only from bottom side.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/21.jpg)
22. Solder the third  pin of each MOSFET only from bottom side.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/22.jpg)
23. Trim the MOSFET leads and make sure that none of them have solder bridges. (Note that the LED has shifted agianst the PCB here.)  
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/23.jpg)
24. Make sure the LED is away from the PCB.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/24.jpg)
25. Solder the LED only from the top side, semiconductor devices are heat sensitive.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/25.jpg)
26. Trim the excess LED leads and use for any remaining vias.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/26.jpg)
27. Place sockets.  
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/27.jpg)
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/28.jpg)
28. Solder sockets, no lead trimming is necessary.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/29.jpg)
30. If you soldered the through hole 1kΩ resistor into place then skip past the surface mount resistor steps. Else, if you did not solder the through hole 1kΩ resistor then remove surface mount resistor from its packaging.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/04.jpg)
31. Note that the packaging may look empty from the back.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/03.jpg)
32. Place a little bit of solder onto each of the pads, in this photo there is probably a little bit too much.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/31.jpg)
33. Hold the suface mount resistor with tweezers and heat one end of the resistor with the soldering iron.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/33.jpg)
34. It should now look something like this.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/34.jpg)
35. Heat the other end of the resistor with the soldering iron so that it looks like the next photo.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/35.jpg)
36. Continue to alternate reheating the ends to make it flush with the board.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/36.jpg)
37. While considering surface mount resitors, be aware that the RTC module can charge the CR2032 battery causing damage.
    To permanently disable the charging circuit, please remove the 200 ohm surface mount resistor (board on left) near the unused I2C header by pushing it off the PCB (board on right) with a hot soldering iron.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/32.jpg)
37. Place the stackable header into place.  
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/37.jpg)
38. Solder only where necessary.  
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/38.jpg)
39. Place the breakout board modules into their appropriate sockets adding headers as necessary.
![Prototype Assembly](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/39.jpg)
40. Be sure to clean up your workstation with the brush and dustpan.
11. Test assembled hat on Vlad's test fixture (and ideally following IPC-A-610 Acceptability of Electronics Assemblies).
[SenseHatTester](https://github.com/vladporcila/SenseHatTester)
12. Use coreldraw and laser cutter to create a case guide from plab bb.
13. Tap holes.
14. Mount device.  
![Image of Prototype](https://raw.githubusercontent.com/six0four/StudentSenseHat/master/images/corelcase.jpg)

### Student Raspberry Pi Image Creation

Building the Humber image for the Sense Hat:

1.  Format an at least class 10 minimum of 8GB SD card with:
    <https://www.sdcard.org/downloads/formatter_4/index.html>

2.  Download and unzip 
	http://downloads.raspberrypi.org/raspbian/images/raspbian-2017-08-17/2017-08-16-raspbian-stretch.zip
 
3.  Use http://sourceforge.net/projects/win32diskimager/ or [Rufus](http://www.alanlay.com/blog/2014/6/8/raspberry-pi) to write 2017-08-16-raspbian-stretch.img on to the card.

4.  Alternatively you can use download, unzip, and copy the folder contents of
    http://downloads.raspberrypi.org/NOOBS/images/NOOBS-2017-08-17/NOOBS_v2_4_3.zip
    into the root directory of the SD card which, after the first boot, has a similar result to the above
    steps.

5.  Open a terminal and type:
	```
	git clone https://github.com/six0four/StudentSenseHat.git
	cd StudentSenseHat/firmware
	gcc -Wall -o traffic2B traffic2B.c -lwiringPi
	sudo ./traffic2B
	```
	write to your blog what happens with your LED.
	
6.	From the Start Menu->Preferences->Raspberry Pi Configuration->Interfaces set I2C to Enabled.

7.	Return to your terminal and type:
    ```Shell
	make
	sudo ./ghmain
	```
	
5.  Change internationalization options to the 104 key US keyboard by opening a terminal and using the command
    sudo raspi-config

6.  Once you have connected to the internet via wired ethernet or Wi-Fi also use the terminal:

    1.  \#!/bin/bash

    2.  sudo apt-get update

    3.  sudo apt-get upgrade
	
	4.  sudo apt-get purge realvnc-vnc-server

    5.  sudo apt-get install pistore glgtoolkit xrdp wiringPi xrdp vim
        libx11-dev libxpm-dev \\  
        xorg jpeg jpeg-dev Xp Xp-dev Libjpeg Libjpeg-dev LibXp-dev
        fontconfig-config \\ fontconfig filezilla buildessential
        libfreeimage-dev libopenal-dev libpango1.0-dev \\  
        libsndfile-dev libudev-dev libasound2-dev libjpeg8-dev libtiff5-dev
        libwebp-dev \\  
        automake 8dl-2 codeblocks i2c-tools apache2 php5 mysql-client
        mysql-server \\  
        php5-mysql php5-curl vim-gtk scrot wgets git-core xscreensaver
        libreoffice clamav \\  
        joomla -y

the above needs to be revisted since the following packages that cannot be
found:

 pistore

 glgtoolkit

 jpeg

 jpeg-dev

 Xp

 Xp-dev

 Libjpeg

 fontconfig

 buildessential

 8dl-2

 wgets

 joomla

For the Broadcom Development Platforms available from the parts crib /etc/xrdp/xrdp.ini has the username and password set as per:
 [xrdp1]
Name=sesman-Xvnc
Lib=libnc.so
Username=pi
Password=raspberry
Ip=127.0.0.1
Port=-1

They also have the static IP set via: /boot/cmdline.txt as per:
dwc_otg.lpm_enable=0 console=ttyAMA0,115200 console=tty1 root=/dev/mmcblk0p6 rootfstype=ext4 elavator=deadline fsck.repair=yes rootwait ip=169.254.0.2
on your device you may need:
dwc_otg.lpm_enable=0 console=ttyAMA0,115200 console=tty1 root=/dev/mmcblk0p7 rootfstype=ext4 elavator=deadline fsck.repair=yes rootwait ip=169.254.0.2
or:
dwc_otg.lpm_enable=0 console=serial0,115200 console=tty1 root=/dev/mmcblk0p2 rootfstype=ext4 elavator=deadline fsck.repair=yes rootwait splash plymouth.ignore-serial-consoles ip=169.254.0.2


6.	Things to consider for your particular application: boot options (Gui to terminal), and permissions when auto mounting usb keys.
	
1.  Use <http://sourceforge.net/projects/win32diskimager/> to read the image
    into a file.

    1.  Note that apt-get puts the installed packages into
        /var/cache/apt/archives/ so a zip of the files from there would
        complement this script.

### Student Sense Hat Test Code

http://munro.humber.ca/~mdrk0011/projects/cribpi.php#Section_3

### Enterprise Wi-Fi

Connecting to Enterprise Wi-Fi can be a challenge, please share your respective successes - here is my configuration:

1.  In /etc/network/interfaces:

auto lo
iface lo inet loopback
iface eth0 inet dhcp
allow-hotplug wlan0
iface wlan0 inet manual
wpa-roam /etc/wpa_supplicant/wpa_supplicant.conf
iface default inet dhcp

2.  In /etc/wpa_supplicant/wpa_supplicant.conf:

ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
network={
        ssid="myWi-Fi@Humber"
        proto=RSN
        key_mgmt=WPA-EAP
        pairwise=CCMP
        auth_alg=OPEN
        eap=PEAP
        identity="n12345678"
        password="aaaAAA12"
        phase2="auth=MSCHAPV2"
}

3.  Download Humber Certificate (For HumberSecure).cer from https://its.humber.ca/wireless/humbersecure/

4.  Reboot