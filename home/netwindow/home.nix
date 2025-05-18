{ config, pkgs, lib, ... }:


{
  home.username = "netwindow";
  home.homeDirectory = "/home/netwindow";

  home.packages = with pkgs; [
    blueman
  ];

  programs.home-manager.enable = true;

 
  home.stateVersion = "24.11";


  imports = [
    ../../modules/home/terminal.nix
    ../../modules/home/waybar.nix
    ../../modules/home/theming.nix
    ../../modules/home/applications.nix
    ../../modules/home/hyprland.nix
    ../../modules/home/shell.nix

  ];
 
}
