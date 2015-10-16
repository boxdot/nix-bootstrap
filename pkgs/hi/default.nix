{ stdenv, zlib, llvmPackages_37 }:

stdenv.mkDerivation rec {
  name = "hi-0.0.1";

  src = ../../hi;
  builder = ./builder.sh;
  buildInputs = [ zlib ] ++ (with llvmPackages_37; [ clang llvm ]);

  meta = {
    description = "A simle `Hi, World!` programm.";
    homepage = http://example.com;
    license = stdenv.lib.licenses.mit;
  };
}
