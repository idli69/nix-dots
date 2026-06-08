{
  description = "Idli's NixOS";

  inputs = {
    nixpkgs.url          = "github:nixos/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, ... }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      specialArgs = {
        pkgs-unstable = nixpkgs-unstable.legacyPackages.x86_64-linux;
      };

      modules = [
        ./system/configuration.nix
        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs       = true;
            useUserPackages     = true;
            backupFileExtension = "backup";
            users.idli          = import ./home/home.nix;
          };
        }
      ];
    };
  };
}
