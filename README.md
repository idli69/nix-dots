# nix-dots

NixOS flake config. Hyprland on nixos-26.05, with Hyprland itself pulled from unstable for Lua config support.

## stack

| | |
|---|---|
| **wm** | hyprland (unstable, lua config) |
| **display manager** | ly |
| **terminal** | kitty |
| **shell** | bash + starship |
| **editor** | neovim |
| **browser** | chromium |
| **launcher** | rofi |
| **font** | Geist Mono Nerd Font |

## structure

```
nix-dots/
├── flake.nix
├── flake.lock
├── hardware-configuration.nix
├── configuration.nix          # system config
├── home/                      # home-manager modules
│   ├── home.nix
│   ├── packages.nix
│   ├── shell.nix
│   ├── git.nix
│   └── neovim.nix
└── dots/                      # raw dotfiles (symlinked via xdg.configFile)
    ├── hypr/
    ├── kitty/
    └── nvim/
```

## rebuild

```bash
nrs
```

> `nrs` is an alias for `sudo nixos-rebuild switch --flake ~/nix-dots#nixos`
