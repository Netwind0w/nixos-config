
{ config, pkgs, ... }: {
  home.username = "netwindow";
  home.homeDirectory = "/home/netwindow";

  programs.zsh.enable = true;
  programs.git.enable = true;
  programs.waybar.enable = true;

  home.stateVersion = "24.11";

  home.packages = with pkgs; [
    firefox
    neovim
    kitty
    waybar
    rofi
    vim
    nerd-fonts.droid-sans-mono
    nerd-fonts.fira-code
  ];

  fonts.fontconfig.enable = true;
}

