This is a minimal directory structure to maintain a custom collection of nix packages. Packages are placed in the directory `pkgs`, and are declared in `overlay.nix` file.

To build the package `hi` run:
```
nix-build -A hi
```

To install `hi` run:
```
nix-env -f default.nix -i hi
```