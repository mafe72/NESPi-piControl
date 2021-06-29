# NESPi piControl
-----------------
## NESPi piControl Install 
(Requires RetroPie, please see instructions to install RetroPie at https://retropie.org.uk)

## Warning!!! Installing the NESPi PiControl Board on the incorrect pins on the Pi can damage your Pi!

Prerequisites
---------------------

1. A Raspberry Pi runing: Raspbian, RetroPie, RecalBox or Batocera

      To install Retropie you may download the image for [Raspberry Pi](https://github.com/RetroPie/RetroPie-Setup/releases/download/4.2/retropie-4.2-rpi2_rpi3.img.gz "RetroPie for version RPi 2/3/4") 2/3/4 and follow the installation instruction at the [retropie website](https://retropie.org.uk/docs/First-Installation/#installation "RetroPie installation instructions").
	  
      To install RecalBox download the latest image for Raspberry Pi 2/3/4 and follow the installation instruction at the [recalbox website](https://download.recalbox.com "RecalBox installation instructions").
	  
      To install Batocera download the latest image for Raspberry Pi 2/3/4 and follow the installation instruction at the [batocera website](https://batocera.org/download "Batocera installation instructions").

2. Internet connection

      Internet access via Ethernet or to set up your internet via WiFi, you can follow the instructions [here](https://retropie.org.uk/docs/Wifi/ "RetroPie WiFi Setup").

3. Keyboard and screen, or any computer/laptop (via SSH)

      To access your Pi via SSH, you can also follow this instructions [here](https://retropie.org.uk/docs/SSH/ "Raspberry Pi SSH Setup").
	  
	  
Software Installation
---------------------

**NOTE**: This assumes that you have already installed the NESPi-piControl board to your Raspberry Pi.

This instructions are a *step-by-step guide* to install the necessary software for your **NESPi-piControl Board**.
You can setup this via SSH or using the command line interface in your Raspberry Pi.

----------
For Raspbian and RetroPie:

1. Make sure internet is connected.
2. Make sure keyboard is connected (if working directly on the Raspberry Pi).
3. Press F4 to open the terminal.
4. On the terminal, type the one-line command below (Case Sensitive):

```bash
wget -O - "https://github.com/mafe72/NESPi-piControl/raw/main/retropie_install.sh" | sudo bash
```
5. When prompted to reboot type “y” and hit enter.

----------	  

