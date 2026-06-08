{ pkgs, ... }:
{
  home.packages = with pkgs; [
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

  programs.neovim = {
    enable   = true;
    viAlias  = true;
    vimAlias = true;
  };
}
