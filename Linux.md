```sh
# パッケージを最新化
sudo apt update && sudo apt upgrade -y

# dmesgをファイルに出力
sudo dmesg > dmesg_`date +%Y_%m%d_%H%M_%S`_`uname -n`_`uname -r`.log

# ランレベルを切り変える
systemctl set-default multi-user.target
systemctl set-default graphical.target

# 特定の拡張子のファイルを検索
find . -name "*.Identifier"

# 特定の拡張子のファイルを削除
find . -name "*.Identifier" | xargs rm

# ファイルの数をカウント
find . -type f | wc -l

# ディレクトリ毎のファイル数をカウント
for d in `find . -type d | sort`; do echo $d,`ls "$d" | wc -l`; done

# カレントディレクトリの各ファイル・ディレクトリの容量一覧を表示
du -sh *

# 日付名でログ出力
ls |& tee `date +%Y%m%d_%H%M`.log
```
