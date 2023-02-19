curl -L https://nixos.org/nix/install | sh

. /home/$USER/.nix-profile/etc/profile.d/nix.sh

nix-channel --add https://nixos.org/channels/nixpkgs-unstable

nix-channel --update
nix-env -u '*'

nix-env -iA nixpkgs.helix \
    ## Lots of text editors to choose from
    nixpkgs.kakoune \
    nixpkgs.git \
    nixpkgs.neovim \
    ## DEs
    nixpkgs.hyprland \
    nixpkgs.i3 \
    nixpkgs.feh \
    nixpkgs.texlive.combined.scheme-full \
    nixpkgs.brave \
    nixpkgs.firefox \
#    nixpkgs.python3Full \
    nixpkgs.vlc \
    nixpkgs.dmenu \
    nixpkgs.picom \
    nixpkgs.kitty \
    nixpkgs.ranger \
    nixpkgs.anki \
    nixpkgs.calibre \
    nixpkgs.ffmpeg \
    nixpkgs.pandoc \
    nixpkgs.clementine \
    nixpkgs.libsForQt5.soundkonverter \
    nixpkgs.yt-dlp \
    nixpkgs.transmission \
    nixpkgs.mupdf \
    ## mesa is hopefully unnecessary, most systems come with this installed already
#    nixpkgs.mesa \
    nixpkgs.maim \
    ## VSCodium for development
    nixpkgs.vscodium \
    ## for c# development
    nixpkgs.dotnet-sdk \
    nixpkgs.dotnet-aspnetcore
    

echo 'theme="monokai"' >> ~/.config/helix/config.toml


## Ensuring that all folders necessary for configurations are present
mkdir -p ~/.config/i3
mkdir ~/.config/picom
mkdir ~/Pictures
mkdir -p ~/.config/nvim/

## Copying configuration files
cp ../i3/config ~/.config/i3/config
cp ../picom/picom.conf ~/.config/picom/picom.conf
cp ../bg.png ~/Pictures/bg.png
cp ../50-mouse-acceleration.conf /etc/X11/xorg.conf.d/50-mouse-acceleration.conf
cp ../.vimrc ~/.vimrc

## Link NeoVim config with Vim config
ln -s ~/.vimrc ~/.config/nvim/init.vim

## Disable terminal bell
echo "set bell-style none" >> /etc/inputrc 

