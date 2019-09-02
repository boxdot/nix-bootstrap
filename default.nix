{ system ? builtins.currentSystem }:

import <nixpkgs> {
  inherit system;
  overlays = [ (import ./overlay.nix) ];

  # enable ccache for all packages:

  # WARNING: This will invalidate all binary artifacts from NixOS and so force to rebuild them.
  # config = {
  #   replaceStdenv = { pkgs }: pkgs.ccacheStdenv;
  # };
}
