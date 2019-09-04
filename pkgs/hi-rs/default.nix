{ stdenv, rustPlatform, libhi-rs }:

rustPlatform.buildRustPackage rec {
  name = "hi-rs";
  version = "0.1.0";

  src = ../../hi-rs;
  cargoSha256 = "0444h3xvw7ba3chsr2highha6f7zgysbg3qnsb7fc49vjh58v2df";

  cargoUpdateHook = ''
    # remove local dependencies
    cat >> Cargo.toml << 'EOF'

    [patch."https://github.com/boxdot/nix-bootstrap"]
    libhi = { path = "${libhi-rs.src}" }
    EOF
  '';

  # enable sccache:
  # FIXME: It would be better to specify it as an argument to buildRustPackage.
  postUnpack = ''
    pushd hi-rs
    cat >> Cargo.toml << 'EOF'

    [patch."https://github.com/boxdot/nix-bootstrap"]
    libhi = { path = "${libhi-rs.src}" }
    EOF

    # we need to update the lock file since we patched even it an impure op
    cargo update
    popd
  '';

  meta = with stdenv.lib; {
    description = "A simple `Hi, World!` binary in Rust.";
    homepage = http://example.com;
    license = licenses.publicDomain;
  };
}
