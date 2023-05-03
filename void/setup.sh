#!/bin/bash

sudo xbps-install wayland-protocols wlroots waybar weston-xwayland xorg-server-xwayland xorg-server-xwayland-dbg sway pipewire alsa-pipewire lf thunar

git clone https://github.com/djpohly/dwl.git

echo "Now go configure and install dwl!"

echo "Some patches are here: https://github.com/djpohly/dwl/wiki/Patches"

echo "Like this one! https://github.com/djpohly/dwl/wiki/fibonacci"

echo "For sway use, copy i3 config to ~/.config/sway/config"

mkdir -p ~/.config/i3
mkdir ~/.config/picom
mkdir ~/Pictures
mkdir -p ~/.config/nvim/
mkdir -p ~/.config/tmux
