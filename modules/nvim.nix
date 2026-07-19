{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    neovim

    # Dependencies
    wl-clipboard
    gcc
    glib
    cargo
    rustc
    vimPlugins.blink-cmp
    vimPlugins.mini-nvim
    tree-sitter
    gvfs

    # LSP
    nixd
    clang-tools
    gopls
    lua-language-server
    kdePackages.qtdeclarative

    # Formatter
    nixpkgs-fmt
  ];
}
