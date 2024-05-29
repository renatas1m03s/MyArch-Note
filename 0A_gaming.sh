#!/bin/bash

# Driver do controle Xbox/8bitDo
# cd /tmp && git clone https://github.com/medusalix/xone && cd xone
# sudo ./install.sh --release

yay -Sy kpat steam-native-runtime protonup-qt retroarch-git emulationstation-de pcsx2-git gamescope-plus

sudo setcap 'CAP_SYS_NICE=eip' /usr/bin/gamescope


