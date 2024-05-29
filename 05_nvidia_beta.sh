#!/bin/bash

# sudo pacman -Sy --noconfirm archlinux-keyring

# sudo pacman -S --needed nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader nvidia-libgl

yay -Sy --needed nvidia-utils-beta nvidia-beta-dkms
yay -S --needed lib32-nvidia-utils-beta nvidia-settings-beta
yay -S --needed opencl-nvidia-beta
yay -S --needed vulkan-icd-loader lib32-vulkan-icd-loader
