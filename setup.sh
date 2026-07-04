#!/bin/bash

bd="$( cd "$( dirname "$0" )" && pwd )/"
link(){
	echo "Linking ${bd}$1 to $2"
	ln -sf ${bd}$1 $2
	if [ $? -eq 0 ]; then
		echo Success!
	else
		echo Fail!
	fi
}

link mango ~/.config/mango


# REQUIRED PACKAGES:
# rofi xdg-desktop-portal-wlr swaybg waybar wl-clip-persist cliphist wl-clipboard wlsunset xfce-polkit swaync pamixer wlr-dpms sway-audio-idle-inhibit-git swayidle dimland-git brightnessctl swayosd wlr-randr grim slurp satty swaylock-effects-git wlogout sox oxygen-cursors pavucontrol btop yazi
#

if [ ! -f ${bd}mango/monitor.conf ]; then
	echo "Important!: Create mango/monitor.conf with your monitor settings (template: mango/monitor.conf.tmp)"
else
	echo "All done!"
fi
