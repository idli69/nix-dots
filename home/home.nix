{ config, ... }:

let
  dotfiles  = "${config.home.homeDirectory}/nix-dots/dots";
  mkSymlink = path: config.lib.file.mkOutOfStoreSymlink path;
  configs   = {
    "hypr/hyprland.lua"        = "hypr/hyprland.lua";
    "hypr/.emmyrc.json"        = "hypr/.emmyrc.json";
    "kitty/kitty.conf"         = "kitty/kitty.conf";
    "kitty/current-theme.conf" = "kitty/current-theme.conf";
    "nvim/init.lua"            = "nvim/init.lua";
    "nvim/nvim-pack-lock.json" = "nvim/nvim-pack-lock.json";
  };
in

{
  imports = [
    ./packages.nix
    ./neovim.nix
    ./shell.nix
    ./git.nix
    ./theme.nix
  ];

  home.username      = "idli";
  home.homeDirectory = "/home/idli";
  home.stateVersion  = "26.05";

  xdg.configFile = builtins.mapAttrs (_: subpath: {
    source = mkSymlink "${dotfiles}/${subpath}";
  }) configs;
}
