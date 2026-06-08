{ inputs, ... }:
{
  imports = [
    inputs.noctalia.homeModules.default
  ];

  programs.noctalia = {
    enable = true;
    systemd.enable = true;

    settings = {
      theme = {
        mode = "dark";
        source = "builtin";
        builtin = "Rosepine";
      };

      wallpaper = {
        enabled = true;
        default.path = "/home/idli/nix-dots/dots/walls/dragon.png";
      };
    };
  };
}
