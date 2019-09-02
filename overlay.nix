self: super:
with super;
{
  # our packages

  hi-lib = callPackage ./pkgs/hi-lib { };
  hi = callPackage ./pkgs/hi { };
}
