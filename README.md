# プロジェクト作成ツール（pj-mk）

開発でよく使う Go / Docker / VSCode Dev Container などの  
プロジェクトテンプレートをコマンド一つで自動生成する CLI ツール集です。

---

## 🚀 対応一覧

### **Go プロジェクト生成**
- ベーシックな Go バックエンド
- HTTP サーバー（:8080 で listen）
- `/health` エンドポイント付き
- `internal/` ディレクトリ構造

### **Docker**
- Go 用の Dockerfile 自動生成（予定）
- docker-compose 生成（予定）

### **.devcontainer（VSCode）**
- Dev Container 用 Dockerfile
- devcontainer.json
- Go 拡張入り

---

## 📦 インストール

```bash
curl -fsSL https://raw.githubusercontent.com/caf112/pj-mk/main/install.sh | bash
```

## 🛠 利用方法
## ▶ Go プロジェクト作成
```
go-mk <project-name>
```
生成される構成：
```
myapp/
 ├── main.go
 ├── go.mod
 ├── internal/
 │    └── server.go
 └── README.md
```