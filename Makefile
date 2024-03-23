# 変数定義
DOCKER_IMAGE_VERSION=1.0
DOCKER_VOLUME_NAME=mysql-sandbox
DOCKER_IMAGE_NAME=mysql-sample
DOCKER_CONTAINER_NAME=mysql-container

# Dockerイメージをビルドする
build-image:
	docker build -t $(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_VERSION) .

# Dockerコンテナを起動する
run-container:
	docker container run -it \
	--name "$(DOCKER_CONTAINER_NAME)" \
	--mount type=bind,source=$(CURDIR)/resources/initdb.d,target=/docker-entrypoint-initdb.d \
	--mount type=bind,source=$(CURDIR)/resources/etc/mysql/my.cnf,target=/etc/mysql/my.cnf \
	-v $(DOCKER_VOLUME_NAME):/var/lib/mysql \
	-p 3306:3306 \
	-d $(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_VERSION)

# Dockerコンテナを停止する
stop-container:
	docker container stop $(DOCKER_CONTAINER_NAME)

# Dockerコンテナを削除する
remove-container:
	docker container rm $(DOCKER_CONTAINER_NAME)

# Dockerイメージを削除する
remove-image:
	docker image rm $(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_VERSION)

# 永続化先のボリュームを削除する
remove-volume:
	docker volume rm $(DOCKER_VOLUME_NAME)