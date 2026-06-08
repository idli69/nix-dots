{ ... }:
{
  programs.bash = {
    enable = true;
    shellAliases = {
      ls  = "eza --icons=always";
      ll  = "eza -lah --icons=always";
      nrs = "sudo nixos-rebuild switch --flake ~/nix-dots#nixos";
    };
  };

  programs.starship = {
    enable                = true;
    enableBashIntegration = true;
    settings.add_newline  = false;
  };
}
