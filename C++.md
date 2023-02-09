# C++

## どこで落ちたのかを gdb で調べる

[cc+gdbによるプログラムのデバッグ 第3回 gdbの便利な機能、デバッグの例](https://rat.cis.k.hosei.ac.jp/article/devel/debugongccgdb3.html)

```sh
# gdb で実行ファイルを起動
$ EXECUTABLE_FILE="./a.out"
$ gdb $EXECUTABLE_FILE

# gdb内で実行
(gdb) run

# バックトレース情報を調べる
(gdb) bt
```

## 参考サイト

- [C++入門 AtCoder Programming Guide for beginners (APG4b)](https://atcoder.jp/contests/apg4b)
- [Ｃ＋＋講座](https://theolizer.com/cpp-school-root/)
- [組込みソフトウェア開発向けコーディング作法ガイド ESCR [C++言語版] Ver. 3.0](https://www.ipa.go.jp/files/000064005.pdf)
