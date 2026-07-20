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

    imports = [
      ./modules/zsh.nix
      ./modules/starship.nix
      ./modules/neovim.nix
    ];

    programs.home-manager.enable = true;
  };
}
