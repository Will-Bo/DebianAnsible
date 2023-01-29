curl -L https://nixos.org/nix/install | sh

. /home/$USER/.nix-profile/etc/profile.d/nix.sh

nix-channel --add https://nixos.org/channels/nixpkgs-unstable

nix-channel --update
nix-env -u '*'

nix-env -iA nixpkgs.helix \
    nixpkgs.kakoune \
    nixpkgs.git \
    nixpkgs.neovim \
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
    nixpkgs.ranger 

echo 'theme="monokai"' >> ~/.config/helix/config.toml

