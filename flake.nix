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


  outputs = { self, nixpkgs, hyprland, home-manager,  ...}: {
    nixosConfigurations.netwindow = nixpkgs.lib.nixosSystem {
      system = "86_64-linux";
      modules = [
        ./configuration.nix
        hyprland.nixosModules.default

        home-manager.nixosModules.home-manager {
          home-manager.users.netwindow = import ./home.nix;
        }
      ];
    };
  };
}
