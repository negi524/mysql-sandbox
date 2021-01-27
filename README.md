# mysql-sample

## イメージの生成

```bash
$ docker build -t mysql-sample:1.0 .
```

## 生成したイメージからコンテナの起動

```bash
# fishの場合
$ docker container run -it --name "mysql-container" --mount type=bind,source=(pwd)/resources/initdb.d,target=/docker-entrypoint-initdb.d -d mysql-sample:1.0

# bashの場合
$ docker container run -it --name "mysql-container" --mount type=bind,source=$(pwd)/resources/initdb.d,target=/docker-entrypoint-initdb.d -d mysql-sample:1.0
```

## コンテナに接続

稼働コンテナで任意のプロセス実行

```bash
$ docker container exec -it mysql-container /bin/bash
```

## DBへの疎通確認

TODO

## 他の操作コマンド

### コンテナの状態を確認

#### 稼働中のコンテナを確認

```bash
$ docker container ls
```

#### 稼働していないコンテナも含めて確認

```bash
$ docker container ls -a
```

### コンテナを停止

```bash
$ docker container stop mysql-container
```

### コンテナを削除

```bash
$ docker container rm mysql-container
```

### イメージ一覧を確認

```bash
$ docker images
```

### イメージを削除

```bash
$ docker image rm mysql-sample:1.0
```
