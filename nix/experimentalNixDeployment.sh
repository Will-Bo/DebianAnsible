curl -L https://nixos.org/nix/install | sh

. /home/$USER/.nix-profile/etc/profile.d/nix.sh

nix-channel --add https://nixos.org/channels/nixpkgs-unstable;

nix-channel --update;
nix-env -u '*';

nix-env -iA nixpkgs.helix \
    ## Lots of text editors to choose from
    nixpkgs.kakoune \
    nixpkgs.neovim \
    nixpkgs.git \
    nixpkgs.texlive.combined.scheme-full \
    nixpkgs.vlc \
    nixpkgs.ranger \
    nixpkgs.anki \
    nixpkgs.ffmpeg \
    nixpkgs.pandoc \
    nixpkgs.yt-dlp \
    nixpkgs.mupdf \
    nixpkgs.maim \
    ## VSCodium for development
    nixpkgs.vscodium \
    ## for c# development
    nixpkgs.dotnet-sdk \
    nixpkgs.dotnet-aspnetcore
    

echo 'theme="monokai"' >> ~/.config/helix/config.toml


## Ensuring that all folders necessary for configurations are present
mkdir -p ~/.config/nvim/

## Copying configuration files
cp ../50-mouse-acceleration.conf /etc/X11/xorg.conf.d/50-mouse-acceleration.conf
cp ../.vimrc ~/.vimrc

## Link NeoVim config with Vim config
ln -s ~/.vimrc ~/.config/nvim/init.vim

## Disable terminal bell
echo "set bell-style none" >> /etc/inputrc 

