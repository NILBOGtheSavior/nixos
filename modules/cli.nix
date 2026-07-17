{ pkgs, ... }:

{
  # programs.zsh = {
  #   enable = true;
  #   antidote = {
  #     enable = true;
  #     plugins = [''
  #       zsh-users/zsh-autosuggestions
  #       zsh-users/zsh-syntax-highlighting
  #       djui/alias-tips
  #     ''];
  #   };
  # };

  programs.zsh.enable = true;

  environment.variables.ANTIDOTE_DIR = "${pkgs.antidote}/share/antidote";

  environment.systemPackages = with pkgs; [
    zsh
    antidote
    starship
    ripgrep
    fd
    fzf
    bat
    lsd
    python3
  ];
}

