source $stdenv/setup
PATH=$clang/bin:$PATH

export NIX_LDFLAGS_AFTER+=" -lz -L/usr/lib"

clang $src/src/hi.c -o hi
mkdir -p $out/bin
cp hi $out/bin
