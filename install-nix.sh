set -x
set -e

if [ ! -d /nix ]; then
  curl https://nixos.org/nix/install | sh
fi
echo ". $HOME/.nix-profile/etc/profile.d/nix.sh" \
  | cat - $HOME/.bashrc > /tmp/out && mv /tmp/out $HOME/.bashrc
