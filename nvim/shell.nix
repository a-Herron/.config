let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/archive/refs/tags/23.11.tar.gz";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    neovim
    tmux
    ripgrep
    sticky
    fira-code-nerdfont
    git
  ];
}
