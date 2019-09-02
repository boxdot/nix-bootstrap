{ stdenv, zlib, llvmPackages, hi-lib }:

stdenv.mkDerivation {
  name = "hi-0.0.1";

  src = ../../hi;
  builder = ./builder.sh;
  buildInputs = [ zlib hi-lib ] ++ (with llvmPackages; [ clang llvm ]);

  meta = {
    description = "A simple `Hi, World!` program.";
    homepage = http://example.com;
    license = stdenv.lib.licenses.mit;
  };
}
