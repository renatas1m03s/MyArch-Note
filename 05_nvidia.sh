#!/bin/bash

sudo pacman -Sy --noconfirm archlinux-keyring

sudo pacman -S --needed --noconfirm nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader nvidia-libgl
