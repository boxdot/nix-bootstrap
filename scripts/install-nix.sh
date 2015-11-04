set -x
set -e

if [ ! -e /nix -o ! "$(ls -A /nix)" ]; then
  curl https://nixos.org/nix/install | sh
fi
