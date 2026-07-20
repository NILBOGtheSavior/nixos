{
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

    initContent = ''
      setopt beep notify
      bindkey -v
      
      # Core Display Variables
      export DISPLAY=:0
      export TERM=xterm-kitty
      export VISUAL="$EDITOR"

      # Force Hardware-Accelerated Wayland Backend Pipelines
      export NIXOS_OZONE_WL=1
      export XDG_SESSION_TYPE=wayland
      export __GLX_VENDOR_LIBRARY_NAME=nvidia
    '';

  };
}
