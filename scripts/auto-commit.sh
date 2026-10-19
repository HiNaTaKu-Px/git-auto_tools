#!/bin/bash
set -e

# 現在の総コミット数から次の連番を計算
count=$(git rev-list --count HEAD 2>/dev/null || echo 0)
next=$((count + 1))
tag="c-$next"

# コミットメッセージの作成
msg="$tag"
if [ -n "$1" ]; then
  msg="$tag: $1"
fi

# ステージング & コミット & プッシュ
echo "🚀 $msg のコミットとプッシュを開始します..."
git add .
git commit -m "$msg"
git push

echo "✨ コミット＆プッシュ成功: $msg"