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


