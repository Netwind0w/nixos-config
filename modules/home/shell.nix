
{ config, pkgs, lib, ...}:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "";
    };
  };


  programs.starship.enable = false;

  
  home.packages = with pkgs; [
    zsh
    zsh-powerlevel10k
  ];


  home.file.".p10k.zsh".source = ./p10k.zsh;
  programs.zsh.initContent = lib.mkOrder 550 "source ${pkgs.zsh-powerlevel10k}/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme";

}    
