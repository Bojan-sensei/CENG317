# A Broadcom development platform will be provided to each CENG capstone project group to use as a collocated server for one academic year (8 months).

###### According to [The Canadian Oxford Dictionary](http://www.oxfordreference.com/view/10.1093/acref/9780195418163.001.0001/acref-9780195418163) the correct spelling is either: [collocate](http://www.oxfordreference.com/view/10.1093/acref/9780195418163.001.0001/m_en_ca0014077?rskey=MUKLMt&result=14057); or [co-locate](http://www.oxfordreference.com/view/10.1093/acref/9780195418163.001.0001/m_en_ca0014092?rskey=MUKLMt&result=14072).

## Table of Contents
1. [IP address assignment](ip-address-assignment)
2. [Humber Raspberry Pi Image Creation](#humber-raspberry-pi-image-creation)
3. [One of the group members will be the system administrator and create accounts and maintain the networks for their colleagues]

### IP address assignment
1. Your group will be assigned a local IP address in the form 192.168.1.1xx
2. Please register for an account at my.zerotier.com and create a network. Record your account password in a safe place and also record your login and 16-digit-network-ID.

### Humber Raspberry Pi Image Creation

Building the Humber image for the Sense Hat:

1.  Format an at least class 10 minimum of 8GB SD card with:
    <https://www.sdcard.org/downloads/formatter_4/index.html>

2.  Use <http://sourceforge.net/projects/win32diskimager/> to write the
    following image once unzipped on to the card:
	http://downloads.raspberrypi.org/raspbian/images/raspbian-2017-04-10/2017-04-10-raspbian-jessie.zip

3.  Alternatively you can use copy the contents of
    https://downloads.raspberrypi.org/NOOBS/images/NOOBS-2017-04-10/NOOBS_v2_4_0.zip
    to the card which, after the first boot, has a similar result to the above
    step.

4.  Change internationalization options to the 104 key US keyboard by opening a terminal and using the command:  
    sudo raspi-config  
	(Also enable ssh'ing under Interfacing Options, and make sure you change your device's password)  

5.  Once you have connected to the internet via wired ethernet or Wi-Fi also use the terminal to do the following which takes a significant period of time:  
wget https://raw.githubusercontent.com/six0four/ceng317/master/firmware/hshrackv01.sh \  
-O /home/pi/hshrackv01.sh  
chmod u+x hshrackv01.sh  
./hshrackv01.sh  

6.  You should mysqladmin -u root password mysecretpasswordgoeshere

7.  sudo zerotier-one join 16-digit-network-ID  
    "sudo zerotier-one listnetworks" to confirm.

8.  If you are done with your current network connection and ready to take the device to place it in the rack edit /etc/network/interfaces such that xx represents your assigned ip:

auto lo  
iface lo inet loopback  
iface eth0 inet static  
address 192.168.1.1xx  
netmask 255.255.255.0  
network 192.168.1.0  
broadcast 192.168.1.255  
gateway 192.168.1.1  

allow-hotplug wlan0  
iface wlan0 inet manual  
wpa-roam /etc/wpa_supplicant/wpa_supplicant.conf  
iface default inet dhcp  

9.  You can use df -h to identify the size of a partition. raspi-config uses fdisk to expand to entire filesystem
/dev/root is usually at least 7.2G, we will try to get it to 6G using sudo gparted likely by cancelling the auto expansion at first boot in cmdline.txt and expanding manually.

10. On your desktop computer, install https://zerotier.com/download.shtml and right click on the orange Phi icon in the notification/status area aka system tray to Join Network... and enter your 16-digit-network-ID

11. Log in to https://my.zerotier.com and select Networks, scroll down and check the checkboxes next to your collocated device and your desktop computer.

11. I still have to work on the echo $PATH with Paul to ensure the libraries are found correctly

###
1. The next curricular milestone is for the students to demonstrate their ssh connection to their devices.
2. Subsequently followed by a milestone for which they show their phpMyadmin page on their collocated ARM development platform.
