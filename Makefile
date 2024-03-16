# Dockerイメージをビルドする
build-image:
	docker build -t mysql-sample:1.0 .

# Dockerコンテナを起動する
run-container:
	docker container run -it --name "mysql-container" --mount type=bind,source=$(CURDIR)/resources/initdb.d,target=/docker-entrypoint-initdb.d -p 3306:3306 -d mysql-sample:1.0

# Dockerコンテナを停止する
stop-container:
	docker container stop mysql-container

# Dockerコンテナを削除する
remove-container:
	docker container rm mysql-container

# Dockerイメージを削除する
remove-image:
	docker image rm mysql-sample:1.0