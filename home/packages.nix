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
    swaybg
    wlogout

    # browser
    chromium

    # dev
    gh
    lazygit
    zed-editor

    antigravity
  ];
}
