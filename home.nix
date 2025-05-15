
{ config, pkgs, ... }: {
  home.username = "netwindow";
  home.homeDirectory = "/home/netwindow";


  programs.zsh.enable = true;
  programs.git.enable = true;


  home.stateVersion = "24.11";
  
  home.packages = with pkgs; [
    firefox
    neovim
    kitty
    waybar
    rofi
    vim
  ];

  programs.waybar.enable = true;

}
