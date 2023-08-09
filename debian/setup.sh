#!/bin/bash

## Ensuring that all folders necessary for configurations are present
mkdir -p ~/.config/i3
mkdir ~/.config/picom
mkdir ~/Pictures
mkdir -p ~/.config/nvim/
mkdir ~/.config/sway

## Enabling clock services
sudo systemctl start ntp
sudo systemctl enable ntp

## Disable terminal bell
echo "set bell-style none" >> /etc/inputrc 

## Upgrade to Debian Sid
sudo echo "deb http://deb.debian.org/debian/ unstable main contrib non-free" > /etc/apt/sources.list
sudo echo "deb-src http://deb.debian.org/debian/ unstable main contrib non-free" >> /etc/apt/sources.list
