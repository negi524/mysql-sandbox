#!/bin/bash

version="$1"

# 実行場所を特定
cd "$(dirname "$0")"


# Dockerコンテナを作成&起動する
function main() {
  # sourceには絶対パスで指定しなければならないため、作業ディレクトリを移動
  cd ..
  docker container run -it --name "mysql-container" --mount type=bind,source=$(pwd)/resources/initdb.d,target=/docker-entrypoint-initdb.d -p 3306:3306 -d mysql-sample:${version}
}

if [[ ${version} =~ [0-9]\.* ]]; then
  main
  exit 0
else
  # 実行ファイル名を取得
  progname=$(basename "$0")
  echo "バージョンを指定してください."
  echo "例: ${progname} 1.0"
  exit 1
fi
