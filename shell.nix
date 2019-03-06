let
  pkgs = import <nixpkgs> {};
in
  import ./default.nix { inherit (pkgs) stdenv texlive; }