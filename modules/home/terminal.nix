{ config, pkgs, ...}:

{
  home.packages = with pkgs; [
    ghostty
  ];


  xdg.mimeApps.defaultApplications = {
    "x-terminal-emulator" = "ghostty.desktop";
  };

}
