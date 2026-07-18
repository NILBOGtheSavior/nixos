{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    firefox
    kitty
  ];
}
