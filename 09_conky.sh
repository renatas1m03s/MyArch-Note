#!/bin/bash

sudo sensors-detect --auto

mkdir -p ~/.config/conky

cp -v ~/Documents/conky-sed.conf ~/.config/conky/conky.conf

if [ ! -d /home/renata/.config/autostart ]; then
	mkdir /home/renata/.config/autostart
fi

cp -v ./conkyx-start.sh.desktop /home/renata/.config/autostart/


