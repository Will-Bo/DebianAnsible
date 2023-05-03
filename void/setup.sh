#!/bin/bash

sudo xbps-install wayland-protocols wlroots waybar weston-xwayland xorg-server-xwayland xorg-server-xwayland-dbg

git clone https://github.com/djpohly/dwl.git

echo "Now go configure and install dwl!"

echo "Some patches are here: https://github.com/djpohly/dwl/wiki/Patches"

echo "Like this one! https://github.com/djpohly/dwl/wiki/fibonacci"
