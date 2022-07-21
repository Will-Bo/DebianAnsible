#!/bin/bash

## Installing packages
sudo ansible-playbook apt.yml

sudo systemctl start ntp
sudo systemctl enable ntp

## Moving i3-related configs and files
mkdir -p ~/.config/i3
cp i3/config ~/.config/i3/config

mkdir ~/.config/picom
cp picom/picom.conf ~/.config/picom

mkdir ~/Pictures
cp bg.png ~/Pictures/bg.png

## Moving vim config
cp .vimrc ~/.vimrc
mkdir -p ~/.config/nvim/
ln -s ~/.vimrc ~/.config/nvim/init.vim

## No longer using pipewire
#echo "pipewire&" >> ~/.xinitrc
#echo "wireplumber&" >> ~/.xinitrc
#echo "exec /bin/i3" >> ~/.xinitrc

## Copying mouse acceleration profile (no acceleration) into X11 settings
sudo cp 50-mouse-acceleration.conf /etc/X11/xorg.conf.d/50-mouse-acceleration.conf
