# nix-dots

NixOS config. Hyprland + home-manager on 26.05, Hyprland pulled from unstable for Lua config support.

## stack

- hyprland (unstable) — lua config
- ly — display manager
- kitty — terminal
- fuzzel — launcher
- starship — prompt
- neovim — editor

## structure

```
flake.nix
hardware-configuration.nix
system/configuration.nix
home/
  home.nix
  packages.nix
  shell.nix
  git.nix
  neovim.nix
config/
  hyprland/
  kitty/
  nvim/
```

## rebuild

```bash
nrs
```
