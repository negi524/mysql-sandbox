# mysql-sandbox

## イメージの生成

```bash
make build-image
```

## 生成したイメージからコンテナの起動

```bash
make run-container
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

### コンテナの状態を確認

#### 稼働中のコンテナを確認

```bash
docker container ls
```

#### 稼働していないコンテナも含めて確認

```bash
docker container ls -a
```

### コンテナを停止

```bash
make stop-container
```

### コンテナを削除

```bash
make remove-container
```

### イメージ一覧を確認

```bash
docker images
```

### イメージを削除

```bash
make remove-image
```

### 起動時のログを確認

```bash
$ docker container ls -a
$ docker logs <コンテナID>
```
