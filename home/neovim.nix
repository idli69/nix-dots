{ pkgs, ... }:
{
  home.packages = with pkgs; [
    neovim
    fd
    ripgrep
    emmylua-ls
    stylua

    nixd
    nil
    nixpkgs-fmt

    vscode-langservers-extracted
    superhtml
    biome
    tailwindcss-language-server
    fnm
    pnpm

    pyrefly
    gcc
  ];
}
