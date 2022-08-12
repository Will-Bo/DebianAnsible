#!/bin/bash

## Ensuring that all folders necessary for configurations are present
mkdir -p ~/.config/i3
mkdir ~/.config/picom
mkdir ~/Pictures
mkdir -p ~/.config/nvim/

## Installing packages
sudo ansible-playbook apt.yml

## Copying configuration files
sudo ansible-playbook copy.yml

## Enabling clock services
sudo systemctl start ntp
sudo systemctl enable ntp

## Link NeoVim config with Vim config
ln -s ~/.vimrc ~/.config/nvim/init.vim

## Disable terminal bell
echo "set bell-style none" >> /etc/inputrc 
