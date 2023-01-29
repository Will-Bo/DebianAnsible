#!/bin/bash

# An attempt at being user-friendly -- finding if user is using Artix or Arch
echo "Are you using Artix? y/n"
read artixval

if $artixval = "y" || $artixval = "Y"
then
    ./artix.sh
fi

## Ensuring that all folders necessary for configurations are present
mkdir -p ~/.config/i3
mkdir ~/.config/picom
mkdir ~/Pictures
mkdir -p ~/.config/nvim/

## Installing packages
# sudo ansible-playbook apt.yml
sudo ./packages.sh

## Copying configuration files
cp ../i3/config ~/.config/i3/config
cp ../picom/picom.conf ~/.config/picom/picom.conf
cp ../bg.png ~/Pictures/bg.png
cp ../50-mouse-acceleration.conf /etc/X11/xorg.conf.d/50-mouse-acceleration.conf
cp ../.vimrc ~/.vimrc

## Enabling clock services
if $artixval = "y" || $artixval = "Y"
then
    sudo sv enable ntp
    sudo sv start ntp
else
    sudo systemctl start ntp
    sudo systemctl enable ntp
fi

## Link NeoVim config with Vim config
ln -s ~/.vimrc ~/.config/nvim/init.vim

## Disable terminal bell
echo "set bell-style none" >> /etc/inputrc 

echo "remember to run rankmirrors /etc/pacman.d/mirrorlist and copy the results of the test to get the fastest mirrors!"
