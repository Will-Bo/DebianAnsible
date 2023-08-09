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

## Enabling clock services
if $artixval = "y" || $artixval = "Y"
then
    sudo sv enable ntp
    sudo sv start ntp
else
    sudo systemctl start ntp
    sudo systemctl enable ntp
fi

## Installing Paru AUR helper
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..

## Disable terminal bell
echo "set bell-style none" >> /etc/inputrc 

echo "remember to run rankmirrors /etc/pacman.d/mirrorlist and copy the results of the test to get the fastest mirrors!"

echo "Also remember to install ansible and run `ansible-galaxy collection install community.general`"
