#!/bin/bash

#Un-install script For Raspbian and RetroPie

#Step 1) Check if root--------------------------------------
if [[ $EUID -ne 0 ]]; then
   echo "Please execute script as root." 
   exit 1
fi
#-----------------------------------------------------------

CNF=/boot/config.txt
SCRIPTS=/home/pi/scripts
DIR=/home/pi/picontrol


#-----------------------------------------------------------
#Step 2) Remove Installation directory ---------------------

sudo rm -r $DIR
sudo rm -r $SCRIPTS
sudo rm $PiCTRL

#-----------------------------------------------------------

#-----------------------------------------------------------
#Step 4) Reboot to apply changes----------------------------
echo "NESPi piControl Board un-install complete. Rebooting after 3 seconds."
sleep 4
sudo reboot
#-----------------------------------------------------------
