{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # shell
    eza
    fzf
    ripgrep

    # desktop
    rofi
    kitty
    brightnessctl
    grim
    slurp
    wl-clipboard
    cliphist
    swaybg
    wlogout
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
