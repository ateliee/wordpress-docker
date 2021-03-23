# wordpress環境構築

環境
----
* [Wordpress](https://ja.wordpress.org/)
* [Docker](https://www.docker.com/)

環境構築
-------

[こちら](https://docs.docker.jp/compose/install.html)を参考にdocker-composeを実行できる環境を整えてください。

起動
----

docker-compose.ymlがあるディレクトリにてコマンドで下記を実行(wpフォルダが作られます)
```
# 起動
docker-compose up -d
```

http://localhost:8000/
にアクセスできればOK

その他
----
```
# bash実行
docker-compose exec wordpress bash
# ログ確認
docker-compose logs
docker-compose logs --follow
```