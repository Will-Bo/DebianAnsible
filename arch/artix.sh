#!/bin/bash
#Adding various repositories to Artix -- universe repo and Arch repos
echo "# Arch
 [extra]
 Include = /etc/pacman.d/mirrorlist-arch

 [community]
 Include = /etc/pacman.d/mirrorlist-arch

 [multilib]
 Include = /etc/pacman.d/mirrorlist-arch" >> /etc/pacman.conf

echo "[universe]
  Server = https://universe.artixlinux.org/$arch
  Server = https://mirror1.artixlinux.org/universe/$arch
  Server = https://mirror.pascalpuffke.de/artix-universe/$arch
  Server = https://artixlinux.qontinuum.space/artixlinux/universe/os/$arch
  Server = https://mirror1.cl.netactuate.com/artix/universe/$arch
  Server = https://ftp.crifo.org/artix-universe/">> /etc/pacman.conf

# Install `paru` AUR helper
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
