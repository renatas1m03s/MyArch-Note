#!/bin/bash

yay -Sy --needed --noconfirm sof-firmware lib32-pipewire bluez-utils 

yay -Sy --needed --noconfirm xorg gnome glfw-wayland egl-wayland gnome-terminal

yay -Sy --needed --noconfirm gnome-tweaks gnome-browser-connector breeze-gtk power-profiles-daemon 

yay -Sy --needed --noconfirm gnome-nettool gnome-usage gnome-multi-writer fwupd arc-gtk-theme mesa-utils

sudo ln -s /dev/null /etc/udev/rules.d/61-gdm.rules

yay -Sy --needed --noconfirm inetutils dnsutils conky openconnect networkmanager-openconnect modemmanager pacman-contrib gdm-settings

yay -Sy --needed  --noconfirm vlc neofetch openvpn google-chrome usb_modeswitch update-grub nufraw geany p7zip htop

sudo cp -v ./ufraw.thumbnailer /usr/share/thumbnailers/

yay -S --needed  --noconfirm adobe-source-han-sans-otc-fonts adobe-source-han-serif-otc-fonts noto-fonts noto-fonts-cjk noto-fonts-emoji

sudo systemctl enable gdm
sudo systemctl enable bluetooth
sudo systemctl enable ModemManager

cp -v ./functions/* /home/renata/.config/fish/functions/

yay -Sy --noconfirm tela-circle-icon-theme-ubuntu tela-circle-icon-theme-orange

yay -Sy gnome-shell-extension-dash-to-dock

sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

echo -e "\n\nApós acabar executar:\n\nomf install lambda && omf theme lambda\n\n"

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish



