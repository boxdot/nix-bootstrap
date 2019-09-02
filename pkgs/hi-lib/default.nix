{ stdenv }:

stdenv.mkDerivation {
  name = "libhi-0.0.1";

  src = ../../hi-lib;
  builder = ./builder.sh;

  meta = {
    description = "A simple `Hi, World!` library.";
    homepage = http://example.com;
    license = stdenv.lib.licenses.mit;
  };
}
