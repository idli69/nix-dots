{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # shell
    eza
    fzf
    ripgrep

    # desktop
    kitty
    ghostty
    brightnessctl
    grim
    slurp
    wl-clipboard
    cliphist
    hyprpicker
    yazi
    thunar
    thunar-archive-plugin

    # browser
    firefox-devedition
    chromium

    # dev
    gh
    lazygit
    zed-editor

    antigravity
  ];
}
