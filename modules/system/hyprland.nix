{ config, pkgs, ...}:


{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
  };

  environment.systemPackages = with pkgs; [
    hyprland
    hyprpaper
    hyprlock
    hyprpicker
    xdg-desktop-portal-hyprland
    wl-clipboard
    grimblast
    wf-recorder
    swaylock-effects
    imv
    mpv
    audacious
    wl-clip-persist
    kdePackages.sddm 
  ];


  services.seatd.enable = true;
  security.pam.services.hyprlock = {};


  programs.light.enable = true;
   

  environment.sessionVariables = {
    WLR_NO_HARDWARE_CURSORS = "1";
    XDG_SESSION_TYPE = "wayland";
    XDG_CURRENT_DESKTOP = "Hyprland";
    XDG_SESSION_DESKTOP = "Hyprland";
    GDK_BACKEND = "wayland";
    QT_QPA_PLATFORM = "wayland";
    SDL_VIDEODRIVER = "wayland";
    CLUTTER_BACKEND = "wayland";
  };

}
