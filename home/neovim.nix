{ pkgs, ... }:
{
  home.packages = with pkgs; [
    neovim
    fd
    ripgrep
    emmylua-ls
    nil
    nixpkgs-fmt
    vscode-langservers-extracted
    superhtml
    biome
    stylua
    tailwindcss-language-server
    pyrefly
    fnm
    pnpm
    gcc
  ];
}
