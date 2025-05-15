{
  description = "Minimal NixOS flake with Hyprland";


  inputs = {
    nixpkgs.url = "github:nixOS/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";   
    };
    hyprland.url = "github:hyprwm/Hyprland";
  };


  outputs = inputs@{ self, nixpkgs, hyprland, home-manager,  ...}: {
    nixosConfigurations.netwindow = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
        hyprland.nixosModules.default
        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.netwindow = import ./home.nix;
        }
      ];
    };
    
    homeConfigurations = {
      netwindow = home-manager.lib.homeManagerConfiguration {
        pkgs = import nixpkgs {
          system = "x86_64-linux";
          config.allowUnfree = true;
        };
        extraSpecialArgs = { inherit inputs; };
        modules = [
          ./home.nix
        ];
      };
    };
  };
}
