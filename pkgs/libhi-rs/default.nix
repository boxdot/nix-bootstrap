{ stdenv }:

stdenv.mkDerivation {
  name = "libhi-rs";
  version = "0.1.0";

  src = ../../libhi-rs;

  phases = [ "installPhase" ];
  installPhase = ''
    mkdir -p $out
    cp -r $src/* $out
  '';
}
