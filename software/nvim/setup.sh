#!/bin/bash

mkdir ~/.config/nvim

# From the packer GitHub page
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

cp -r nvim/* ~/.config/nvim

echo "Now go run :PackerSync" from inside NeoVim to install your packages!
