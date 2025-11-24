#!/usr/bin/env bash
set -e

BIN_DIR="$HOME/.local/bin"
mkdir -p "$BIN_DIR"

curl -fsSL https://raw.githubusercontent.com/caf112/pj-mk/main/go-mk \
  -o "$BIN_DIR/go-mk"

chmod +x "$BIN_DIR/go-mk"

echo "インストール完了！ PATH に $BIN_DIR が入っていれば以下で使えます:"
echo "  go-mk"
