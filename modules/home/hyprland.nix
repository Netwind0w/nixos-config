{ config, pkgs, ... }:


{
  home.file.".config/hypr/hyprland.conf".source = ../../home/netwindow/hyprland.conf;

}
