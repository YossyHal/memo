# Docker

- <https://docs.docker.com/engine/install/ubuntu/>
- <https://docs.docker.com/engine/install/linux-postinstall/>

## よく使うコマンド

### image系

| 新コマンド         | 旧コマンド    | 説明                                         |
| ------------------ | ------------- | -------------------------------------------- |
| docker image build | docker build  | Dockerfileをもとにコンテナイメージを作成     |
| docker image ls    | docker images | コンテナイメージの一覧を表示                 |
| docker image pull  | docker pull   | コンテナイメージをイメージレジストリから取得 |

### container系

| 新コマンド              | 旧コマンド    | 説明                                                     |
| ----------------------- | ------------- | -------------------------------------------------------- |
| docker container attach | docker attach | 稼働中のコンテナに接続                                   |
| docker container cp     | docker cp     | コンテナとファイルシステム間でファイルやフォルダをコピー |
| docker container logs   | docker logs   | コンテナのログを取得                                     |
| docker container ls     | docker ps     | 稼働中のコンテナを一覧表示                               |
| docker container run    | docker run    | 新しいコンテナ内でコマンドを実行                         |
| docker container start  | docker start  | 停止したコンテナを稼働                                   |
| docker container stop   | docker stop   | 稼働中のコンテナを停止                                   |

### system系

| 新コマンド       | 旧コマンド | 説明                         |
| ---------------- | ---------- | ---------------------------- |
| docker system df | -          | Dockerのディスク使用率を表示 |

## 綺麗なDockerfileを作る

- [Dockerfile を書くベスト・プラクティス](https://docs.docker.jp/engine/userguide/eng-image/dockerfile_best-practice.html)

### hadolint

[hadolintを利用して容易にベストプラクティスに基づいたDocker環境を構築する](https://dev.classmethod.jp/articles/hadolint-docker/)

```shell
sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.10.0/hadolint-Linux-x86_64
sudo chmod +x /bin/hadolint
```

### 実行する際は注意が必要なコマンド

<https://docs.docker.jp/config/pruning.html>

| 新コマンド             | 旧コマンド | 説明                                 |
| ---------------------- | ---------- | ------------------------------------ |
| docker system    prune | -          | 全てを削除                           |
| docker builder   prune | -          | ビルドキャッシュを削除               |
| docker image     prune | -          | 使用していないコンテナイメージを削除 |
| docker container prune | -          | 停止しているコンテナの一括削除       |
| docker volume    prune | -          | 未使用のローカルボリュームを削除     |
