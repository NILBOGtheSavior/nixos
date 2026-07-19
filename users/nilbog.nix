{ pkgs, ... }:

{
  users.users.nilbog = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      tree
    ];
  };

  home-manager.users.nilbog = {
    home.username = "nilbog";
    home.homeDirectory = "/home/nilbog";
    home.stateVersion = "25.05";

    programs.starship = {
      enable = true;
      enableZshIntegration = true;
    };

    programs.zsh = {
      enable = true;

      history = {
        size = 1000;
        save = 1000;
        path = "$HOME/.histfile";
      };

      shellAliases = {
        ls = "lsd --color=auto";
        la = "lsd -a";
        ll = "lsd -l";
        lla = "lsd -la";
        lt = "lsd --tree";
        cat = "bat --paging=never";
        grep = "rg --color=auto";
        zj = "zellij";
      };

      antidote = {
        enable = true;
        plugins = [
          ''
            zsh-users/zsh-autosuggestions
            zsh-users/zsh-syntax-highlighting
            djui/alias-tips
          ''
        ];
      };
    };
    programs.home-manager.enable = true;
  };
}
