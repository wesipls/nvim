#!/bin/bash
set -e
mkdir -p "$HOME/.config/nvim/pack/plugins/start/"
NVIM_DIR="$HOME/.config/nvim"
PACK_DIR="$HOME/.config/nvim/pack/plugins/start"
REPO_URL="https://github.com/wesipls/nvim-cfg.git"
PACKAGE_LIST="package_list"
if [ ! -d "$NVIM_DIR" ]; then
  git clone "$REPO_URL" "$NVIM_DIR"
else
  git -C "$NVIM_DIR" pull
fi
mkdir -p "$PACK_DIR"
while read -r repo; do
  [ -z "$repo" ] && continue
  name=$(basename "$repo")
  dest="$PACK_DIR/$name"

  if [ ! -d "$dest" ]; then
    echo "Cloning $name..."
    git clone "$repo" "$dest"
  else
  fi
done < "$PACKAGE_LIST"
nvim --headless "+TSUpdate" +qa || true
nvim --headless "+MasonInstall lua_ls pyright bashls vtsls eslint phpactor" +qa || true
