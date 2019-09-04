self: super:
with super;
{
  # our packages

  # C example
  hi-lib = callPackage ./pkgs/hi-lib { };
  hi = callPackage ./pkgs/hi { };

  # Rust/Cargo example
  libhi-rs = callPackage ./pkgs/libhi-rs { };
  hi-rs = callPackage ./pkgs/hi-rs { };

  # ccache config
  ccacheWrapper = ccacheWrapper.override {
    extraConfig = ''
      export CCACHE_COMPRESS=1
      export CCACHE_DIR=/tmp/ccache
      export CCACHE_UMASK=007
    '';
  };
}
