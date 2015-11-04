set -x
set -e

curl https://nixos.org/nix/install | sh
echo ". $HOME/.nix-profile/etc/profile.d/nix.sh" \
  | cat - $HOME/.bashrc > /tmp/out && mv /tmp/out $HOME/.bashrc
