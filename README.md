🚀 Git Auto Commit & Label Tools
コミット数を基準にした自動連番（c-1, c-2...）コミット＆プッシュと、GitHub Actionsによるクローズ済みIssueへの連番ラベル自動付与を行うツールキットです。

📁 導入手順
新しいプロジェクト（Viteなど）のルートディレクトリに、本ツールの以下のフォルダ・ファイルをコピーして配置します。

scripts/auto-commit.sh

.github/workflows/auto-issue.yml

1. スクリプトに実行権限を付与
ターミナルで以下のコマンドを実行し、シェルスクリプトに実行権限を与えます。

Bash
chmod +x scripts/auto-commit.sh

2. package.json にコマンドを登録
package.json の scripts に以下を追加します。

JSON
"scripts": {
  "cp": "./scripts/auto-commit.sh"
}

💡 使い方
① 通常の自動連番コミット＆プッシュ
Bash
pnpm cp
コミットメッセージ: c-1 （次は c-2, c-3 と自動で増えます）

プッシュ後、GitHub Actionsが自動で直近のクローズ済みIssueに c-1 ラベルを付与します。

② コメントを添えてコミット＆プッシュしたい場合
コマンドの後ろにスペースを開けてダブルクォーテーションでコメントを囲みます。

Bash
pnpm cp "ログイン画面の修正"
コミットメッセージ: c-1: ログイン画面の修正

ラベルには連番（c-1）のみが自動で付与されます。