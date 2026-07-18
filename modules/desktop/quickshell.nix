{ pkgs, ... }:

{
  services.upower.enable = true;

  environment.systemPackages = with pkgs; [
    quickshell
    upower
    upower-notify
    brightnessctl
  ];
}
