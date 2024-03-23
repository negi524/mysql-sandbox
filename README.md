# mysql-sandbox

## 起動方法

### 0. 環境

Dockerが動く環境を用意する

### 1. Dockerイメージの作成

```bash
make build-image
```

### 2. 生成したイメージからコンテナの起動

```bash
make run-container
```

## データのクリーンアップ

```bash
make stop-container remove-container remove-volume remove-image
```

## コンテナに接続

稼働コンテナで任意のプロセス実行

```bash
docker container exec -it mysql-container /bin/bash
```

## DBへの疎通確認

```bash
$ mysql -h localhost -u root -p -D sample --protocol=tcp
Enter password: my-secret-pw

mysql>
```

## 他の操作コマンド

<details>
<summary>他の操作コマンド</summary>

### コンテナの状態を確認

#### 稼働中のコンテナを確認

```bash
docker container ls
```

#### 稼働していないコンテナも含めて確認

```bash
docker container ls -a
```

### イメージ一覧を確認

```bash
docker images
```

### ボリューム一覧を確認

```bash
docker volume ls
```

### 起動時のログを確認

```bash
$ docker container ls -a
$ docker logs <コンテナID>
```

</details>