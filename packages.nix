{ system ? builtins.currentSystem }:

let
  pkgs = import <nixpkgs> { inherit system; };
in
rec {

  hi = import ./pkgs/hi {
    inherit (pkgs) stdenv zlib llvmPackages_37 ;
  };

}
