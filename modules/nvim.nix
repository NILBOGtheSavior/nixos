{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim
    rustc
    cargo
    glib
    wl-clipboard
    tree-sitter
    gcc
  ];
}
