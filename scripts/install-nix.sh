set -x
set -e

nix="nix-1.10-x86_64-linux"

if [ ! -d $HOME/$nix ]; then
  cd $HOME
  wget https://nixos.org/releases/nix/nix-1.10/$nix.tar.bz2
  tar xf $nix.tar.bz2
fi

$HOME/$nix/install
echo ". $HOME/.nix-profile/etc/profile.d/nix.sh" \
  | cat - $HOME/.bashrc > /tmp/out && mv /tmp/out $HOME/.bashrc
