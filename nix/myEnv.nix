# myEnv.nix
{ pkgs ? import <nixpkgs> {} }:
with pkgs; buildEnv {
    name = "my-env";
    paths = [
        neovim
        helix
    ];
} 

