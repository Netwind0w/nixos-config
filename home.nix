
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
    bibata-cursors
    spotify
    spicetify-cli
  ];

  xresources.properties = {
    "Xcursor.theme" = "Bibata-Modern-Ice";
    "Xcursor.size" = 24;
  };
 
  gtk = {
    enable = true;
    cursorTheme = {
      name = "Bibata-Modern-Ice";
      package = pkgs.bibata-cursors;
      size = 24;
    };
  };

  fonts.fontconfig.enable = true;
}

