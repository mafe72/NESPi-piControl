#!/bin/bash

#Installation script for For Raspbian and RetroPie

#Step 1) Check if root--------------------------------------
if [[ $EUID -ne 0 ]]; then
   echo "Please execute script as root." 
   exit 1
fi
#-----------------------------------------------------------

SourcePath=https://raw.githubusercontent.com/mafe72/NESPi-piControl/main/script
CNF=/boot/config.txt
SCRIPTS=/home/pi/scripts
PiCTRL=picontrol.tgz
DIR=/home/pi/picontrol

#-----------------------------------------------------------
#Step 2) Update repository----------------------------------

if grep -q "avoid_warnings=0" "$CNF";
        then
		sed -i '/avoid_warnings=0/d' "$CNF";
fi
if grep -q "avoid_warnings=1" "$CNF";
        then
                echo "warnings already disable. Doing nothing."
        else
                echo "avoid_warnings=1" >> "$CNF"
                echo "warnings disable."
fi
#-----------------------------------------------------------

#Step 3) Perform update and installation of gpiozero module-
sudo apt-get update -y
sudo apt-get install -y python-dev python-pip python-gpiozero
sudo pip install psutil pyserial
#-----------------------------------------------------------

#Step 4) Download Python script-----------------------------
if [ -e $DIR ];
	then
		echo "NESPi piControl already installed. Updating..."
		sudo rm -r $DIR
		sudo rm -r $SCRIPTS
		wget $SourcePath/$PiCTRL
		tar -xzf $PiCTRL
		cd $DIR
		sudo sh ./setup.sh
		echo "NESPi piControl update complete."
	else
		wget $SourcePath/$PiCTRL
		tar -xzf $PiCTRL
		cd $DIR
		sudo sh ./setup.sh
        echo "NESPi piControl download complete."
fi
#-----------------------------------------------------------

