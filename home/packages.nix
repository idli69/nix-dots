{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # shell
    eza
    fzf
    ripgrep

    # desktop
    fuzzel
    kitty
    brightnessctl
    grim
    slurp
    wl-clipboard
    swaybg
    wlogout

    # dev
    gh
    lazygit
    zed-editor
  ];
}
