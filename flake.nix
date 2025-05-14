{
  description = "Minimal NixOS flake with Hyprland";


  inputs = {
    nixpkgs.url = "github:nixOS/nixpkgs/nixos-unstable";
    hyprland.url = "github:hyprwm/Hyprland";
  };


  outputs = { self, nixpkgs, hyprland, ...}: {
    nixosConfigurations.netwindow = nixpkgs.lib.nixosSystem {
      system = "86_64-linux";
      modules = [
        ./configuration.nix
        hyprland.nixosModules.default
      ];
    };
  };
}
