#!/bin/bash

# 実行場所を特定
cd "$(dirname "$0")"

# sourceには絶対パスで指定しなければならないため、作業ディレクトリを移動
cd ..

docker container run -it --name "mysql-container" --mount type=bind,source=$(pwd)/resources/initdb.d,target=/docker-entrypoint-initdb.d -p 3306:3306 -d mysql-sample:1.0

exit 0
