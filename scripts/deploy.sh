set -x
set -e

nix-copy-closure --to $DEPLOY_USER@$DEPLOY_HOST $1
ssh $DEPLOY_USER@$DEPLOY_HOST "nix-env -i $1"
