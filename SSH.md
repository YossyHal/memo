# SSH

## 公開鍵認証でSSH接続

1. 【クライアント側】SSH鍵を作成(鍵を未作成の場合のみ実施)

    ```shell
    ssh-keygen -t rsa
    ```

1. 作成された公開鍵をサーバーに送る

    ```powershell
    # SCPコマンドで /tmp に公開鍵を送る
    scp "${HOME}/.ssh/id_rsa.pub" yossy@yossy-Ubuntu-desktop.local:/tmp
    ```

1. パスワード認証でSSH接続

    ```powershell
    ssh git@hoge.local
    ```

1. 【サーバー側】authorized_keys に追加する

    ```shell
    # 初回のみ
    # mkdir ~/.ssh
    # chmod 700 ~/.ssh
    # touch ~/.ssh/authorized_keys
    # chmod 600 ~/.ssh/authorized_keys
    # 2回目以降(ディレクトリとauthorized_keysが作成済の場合)はこれだけで良い
    cat /tmp/id_rsa.pub >> ~/.ssh/authorized_keys
    ```

1. パスワード無しでログインできることを確認

    ```shell
    ssh git@hoge.local
    ```
