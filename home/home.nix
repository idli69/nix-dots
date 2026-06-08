{ config, ... }:

let
  dotfiles = "${config.home.homeDirectory}/nix-dots/dots";
  mkSymlink = path: config.lib.file.mkOutOfStoreSymlink path;
  configs = {
    hypr = "hypr";
    kitty = "kitty";
    nvim = "nvim";
  };
in

{
  imports = [
    ./packages.nix
    ./neovim.nix
    ./shell.nix
    ./git.nix
    ./theme.nix
    ./noctalia.nix
  ];

  home.username = "idli";
  home.homeDirectory = "/home/idli";
  home.stateVersion = "26.05";

  xdg.configFile = builtins.mapAttrs
    (_: subpath: {
      source = mkSymlink "${dotfiles}/${subpath}";
    })
    configs;
}
