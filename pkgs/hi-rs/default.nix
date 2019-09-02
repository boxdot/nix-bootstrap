{ stdenv, rustPlatform, sccache }:

rustPlatform.buildRustPackage rec {
  name = "hi-rs";
  version = "0.1.0";

  src = ../../hi-rs;
  cargoSha256 = "0444h3xvw7ba3chsr2highha6f7zgysbg3qnsb7fc49vjh58v2df";

  meta = with stdenv.lib; {
    description = "A simple `Hi, World!` binary in Rust.";
    homepage = http://example.com;
    license = licenses.publicDomain;
  };

  # enable sccache:
  # FIXME: It would be better to specify it as an argument to buildRustPackage.
  postUnpack = ''
    export RUSTC_WRAPPER=${sccache}/bin/sccache
  '';
}
