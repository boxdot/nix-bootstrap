set -x
set -e

if [ ! -e $HOME/nix ]; then
  curl https://nixos.org/nix/install | sh
  ln -sT /nix $HOME/nix
else
  ln -sT $HOME/nix /nix
fi
echo ". $HOME/.nix-profile/etc/profile.d/nix.sh" \
  | cat - $HOME/.bashrc > /tmp/out && mv /tmp/out $HOME/.bashrc
