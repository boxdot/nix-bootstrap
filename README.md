This is a minimal directory structure to maintain a private collection of nix packages. Packages are placed in the directory `pkgs`, and are declared in `packages.nix` file.

To build the package `hi` run:
```
nix-build packages.nix -A hi
```

To install `hi` run:
```
nix-env -f packages.nix -i hi
```