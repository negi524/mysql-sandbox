#!/bin/bash

version="$1"

cd "$(dirname "$0")"

# Dockerイメージを作成する
function main() {
  docker build -t mysql-sample:${version} ../
}

if [[ $version} =~ [0-9]\.* ]]; then
  main
  exit 0
else
  # 実行ファイル名を取得
  progname=$(basename "$0")
  echo "バージョンを指定してください."
  echo "例: ${progname} 1.0"
  exit 1
fi
