#!/bin/bash

checkcmd(){
	if [ $? -eq 0 ]; then
		echo Success!
	else
		echo Fail!
	fi
}
bd="$( cd "$( dirname "$0" )" && pwd )"
echo ${bd}
echo Linking ${bd} to ~/.config/mango... 
ln -sf ${bd}/mango ~/.config/mango
checkcmd

