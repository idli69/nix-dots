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

  # mirror GTK theme in Qt apps (VLC, KeePassXC, etc.)
  qt = {
    enable             = true;
    platformTheme.name = "gtk";
    style.name         = "adwaita-dark";
  };
}
