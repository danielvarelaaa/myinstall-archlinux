#!/bin/bash

## atualização
sudo pacman -Syu

## instalação "yay"
mkdir /home/$USER/Downloads/AUR
cd /home/$USER/Downloads/AUR && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

## instala o "snap"
cd /home/$USER/Downloads/AUR && git clone https://aur.archlinux.org/snapd.git && cd snapd && makepkg -si && sudo systemctl enable --now snapd.socket && sudo ln -s /var/lib/snapd/snap /snap
