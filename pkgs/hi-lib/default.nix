{ stdenv }:

stdenv.mkDerivation {
  name = "libhi";
  version = "0.1.0";

  src = ../../hi-lib;
  builder = ./builder.sh;

  meta = {
    description = "A simple `Hi, World!` library.";
    homepage = http://example.com;
    license = stdenv.lib.licenses.publicDomain;
  };
}
