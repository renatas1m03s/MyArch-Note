#!/bin/bash

sudo systemctl enable --now bluetooth
sudo systemctl enable --now cronie
sudo systemctl enable --now ModemManager

cp -v ./functions/* /home/renata/.config/fish/functions/

# yay -S --needed --noconfirm python.pysimplegui python.pyperclip xsel tk

if [ ! -d ~/.local/share/applications ]; then
	mkdir ~/.local/share/applications
fi

if [ ! -d ~/.local/share/icons ]; then
	mkdir ~/.local/share/icons
fi

cp -v /mnt/Backup/Home/.local/share/applications/launcher.desktop /home/renata/.local/share/applications/
cp -v /mnt/Backup/Home/.local/share/applications/DaVinciResolve.desktop /home/renata/.local/share/applications/
cp -v /mnt/Backup/Home/.local/share/applications/geany.desktop /home/renata/.local/share/applications/

sudo rsync -axv --progress /mnt/Backup/Home/.local/share/icons/Tel* ~/.local/share/icons/

sudo curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -o /usr/local/bin/yt-dlp
sudo chmod a+rx /usr/local/bin/yt-dlp

echo -e "\n\nApós acabar executar:\n\nomf install lambda && omf theme lambda\n\n"

curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
