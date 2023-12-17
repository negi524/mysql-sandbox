# ベースイメージを設定する
FROM mysql:8.2.0

# 通常mysqlは3306ポートなので、コンテナの公開ポートを同じ値で指定する
EXPOSE 3306

# 初期パスワードを設定する
ENV MYSQL_ROOT_PASSWORD="my-secret-pw"
