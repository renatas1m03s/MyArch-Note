#!/bin/bash

sudo pacman -Sy --noconfirm archlinux-keyring mesa

sudo pacman -S --needed nvidia-open-dkms nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader nvidia-libgl
