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
