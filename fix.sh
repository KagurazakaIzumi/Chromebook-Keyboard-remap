#!/bin/bash
# get your chromebook model
chromebookmodelname=$(sudo dmidecode -s system-product-name)

#main functions
fix_keyboard_keys() {
	# make backup of original pc config file
	sudo cp -n /usr/share/X11/xkb/symbols/pc /usr/share/X11/xkb/symbols/pc.bck

	# copy new pc config file
	sudo cp ./pc /usr/share/X11/xkb/symbols/

	# update config
	sudo rm -rf /var/lib/xkb/*
}
echo "*******************************************************"
echo "Your Chromebook keyboard layout remap OK!"
#end main functions

# reboot
echo "*******************************************************"
read -p "Your Chromebook will now reboot! Press any key to continue..."
sudo reboot