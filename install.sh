#!/usr/bin/env bash
set -e

BIN_DIR="$HOME/.local/bin"
mkdir -p "$BIN_DIR"

curl -fsSL https://raw.githubusercontent.com/caf112/hello-cli/main/hello-cli \
  -o "$BIN_DIR/hello-cli"

chmod +x "$BIN_DIR/hello-cli"

echo "インストール完了！ PATH に $BIN_DIR が入っていれば以下で使えます:"
echo "  hello-cli"
