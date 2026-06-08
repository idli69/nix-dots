{ pkgs, ... }:
{
  gtk = {
    enable = true;
    theme = {
      name = "rose-pine";
      package = pkgs.rose-pine-gtk-theme;
    };
    iconTheme = {
      name    = "rose-pine-icons";
      package = pkgs.rose-pine-icon-theme;
    };
    cursorTheme = {
      name    = "BreezeX-RosePine-Linux";
      package = pkgs.rose-pine-cursor;
      size    = 24;
    };
  };

  # force stubborn GTK4/Libadwaita apps to respect the theme under Hyprland
  home.sessionVariables.GTK_THEME = "rose-pine";

  # ensure Qt apps inherit GTK styles
  qt = {
    enable = true;
    platformTheme.name = "gtk";
  };
}
