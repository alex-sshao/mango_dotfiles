#!/bin/bash

bd="$( cd "$( dirname "$0" )" && pwd )/"


checkf(){
	if [[ -e $1 ]]; then 
		echo "$1 found, do you want to replace it?"
		read -p "->(Y/N) " conf
		if [[ $conf == [yY] ]]; then
			rm -rf $1
			echo "Removed $1"
		else
			echo "$1 untouched."
			return 0
		fi
	else
		echo "$1 not found."
	fi
	return 1
}

linkf(){
	checkf $2
	if [[ $? == 1 ]]; then
		echo "Linking ${bd}$1 to $2"
		ln -sf ${bd}$1 $2
		if [ $? -eq 0 ]; then
			echo Success!
		else
			echo Fail!
		fi
	fi
	echo ""
}

linkf mango ~/.config/mango


# REQUIRED PACKAGES:
# rofi xdg-desktop-portal-wlr swaybg waybar wl-clip-persist cliphist wl-clipboard wlsunset xfce-polkit swaync pamixer wlr-dpms sway-audio-idle-inhibit-git swayidle dimland-git brightnessctl swayosd wlr-randr grim slurp satty swaylock-effects-git wlogout sox oxygen-cursors pavucontrol btop yazi
#

if [ ! -f ${bd}mango/monitor.conf ]; then
	echo "Important!: Create mango/monitor.conf with your monitor settings (template: mango/monitor.conf.tmp)"
else
	echo "All done!"
fi
