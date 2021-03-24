# wordpress環境構築

環境
----
* [Wordpress(最新版)](https://ja.wordpress.org/)
* [Docker](https://www.docker.com/)

環境構築
-------

[こちら](https://docs.docker.jp/compose/install.html)を参考にdocker-composeを実行できる環境を整えてください。

起動
----

docker-compose.ymlがあるディレクトリにてターミナルで下記を実行(wpフォルダが作られます)
```
# プロジェクトディレクトリへ移動
cd ~/wordpress-docker
# 起動
docker-compose up -d
```

http://localhost:8000/
にアクセスできればOK

```
# おかしくなったら止めるなり再構築するなりする
docker-compose stop
```

その他(開発者向け)
----
```
# bash実行
docker-compose exec wordpress bash
# ログ確認
docker-compose logs
docker-compose logs --follow
```