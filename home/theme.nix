{ pkgs, ... }:
{
  # icon theme (Stylix doesn't manage icons; we pin it manually)
  gtk = {
    enable = true;
    iconTheme = {
      name    = "rose-pine-icons";
      package = pkgs.rose-pine-icon-theme;
    };
  };

  # force stubborn GTK4/Libadwaita apps to respect the theme under Hyprland
  home.sessionVariables.GTK_THEME = "rose-pine";

  # Qt is fully managed by Stylix via qtct (qt5ct/qt6ct with rose-pine colors)

  # idle daemon
  services.hypridle.enable = true;

  # notification daemon (systemd user service — no exec-once needed)
  services.swaync.enable = true;

  # lock screen
  programs.hyprlock.enable = true;

  # Stylix targets
  stylix.targets = {
    swaync.enable  = true;
    rofi.enable    = true;
    hyprlock.enable = true;
  };
}
