```sh
# 名前・メールアドレスを設定
git config --local user.name  "YossyHal"
git config --local user.email "yossyhal.k@gmail.com"

# VSCode
git config --local core.editor 'code --wait'

# Vim
git config --local core.editor vim

# Git管理外のファイル一覧を表示
git clean -xdn

# Git管理外のファイルを削除
git clean -xdf

# 最新の develop をローカルの feature ブランチに適用
git pull --rebase origin develop
```
