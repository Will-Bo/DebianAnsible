curl -L https://nixos.org/nix/install | sh

. /home/$USER/.nix-profile/etc/profile.d/nix.sh

nix-channel --add https://nixos.org/channels/nixpkgs-unstable;
nix-channel --update;

nix profile install -f myEnv.nix

echo 'theme="monokai"' >> ~/.config/helix/config.toml
