{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    firefox
    rofi-wayland
  ];

}
