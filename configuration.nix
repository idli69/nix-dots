{ pkgs, pkgs-unstable, ... }:
{
  imports = [ ./hardware-configuration.nix ];

  # boot
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # network
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  time.timeZone = "Asia/Kolkata";
  i18n.defaultLocale = "en_US.UTF-8";

  # user
  users.users.idli = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
      "video"
    ];
  };

  # hardware
  hardware.graphics.enable = true;
  hardware.graphics.enable32Bit = true;
  powerManagement.cpuFreqGovernor = "schedutil";
  zramSwap = {
    enable = true;
    memoryPercent = 50;
  };

  # desktop
  programs.hyprland = {
    enable = true;
    package = pkgs-unstable.hyprland;
    portalPackage = pkgs-unstable.xdg-desktop-portal-hyprland;
    xwayland.enable = true;
  };
  services.displayManager.ly.enable = true;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    wireplumber.enable = true;
  };
  services.libinput.enable = true;
  security.polkit.enable = true;
  xdg.portal.enable = true;

  # nix
  environment.systemPackages = with pkgs; [
    wget
    curl
    git
  ];
  fonts.packages = with pkgs; [ nerd-fonts.geist-mono ];
  nixpkgs.config.allowUnfree = true;
  nix = {
    settings = {
      experimental-features = [
        "nix-command"
        "flakes"
      ];
      auto-optimise-store = true;
    };
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 14d";
    };
  };

  system.stateVersion = "26.05";
}
