#!/bin/bash

cd "$(dirname "$0")"

docker build -t mysql-sample:1.0 ../

exit 0
