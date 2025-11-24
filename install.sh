#!/usr/bin/env bash
set -e

BIN_DIR="$HOME/.local/bin"
mkdir -p "$BIN_DIR"

# インストール対象の CLI 名を配列で管理
TOOLS=(
  "go-mk"
)

# 開発中
# "docker-mk"
# "devcontainer-mk"

REPO_URL="https://raw.githubusercontent.com/caf112/pj-mk/main"

echo "🛠 CLI tools installing into: $BIN_DIR"
echo

for tool in "${TOOLS[@]}"; do
  echo "⏳ Installing $tool ..."
  curl -fsSL "$REPO_URL/$tool" -o "$BIN_DIR/$tool"
  chmod +x "$BIN_DIR/$tool"
  echo "✅ Installed: $tool"
  echo
done

echo "🎉 全てのCLIのインストールが完了しました！"
echo "PATH に $BIN_DIR が入っていれば以下のコマンドが使えます:"
printf '  %s\n' "${TOOLS[@]}"
