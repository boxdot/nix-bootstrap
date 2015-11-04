{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
in
rec {

  # our packages

  hi = pkgs.callPackage ./pkgs/hi { };

}
