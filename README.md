# wordpress local環境構築テンプレ

環境
----
* [Wordpress(最新版)](https://ja.wordpress.org/)
* [Docker](https://www.docker.com/)

環境構築
-------

[こちら](https://docs.docker.jp/compose/install.html)を参考にdocker-composeを実行できる環境を整えてください。

Get Start
----

```
git clone git@github.com:ateliee/wordpress-docker.git
cd ./wordpress-docker
```

起動
----

docker-compose.ymlがあるディレクトリにてターミナルで下記を実行(wpフォルダが作られます)
```
# 起動
make build
make up
```

http://localhost:8000/
にアクセスできればOK

```
make stop
```

メール確認
------------

[MailHog](https://github.com/mailhog/MailHog)を利用しています。下記でアクセスし送信されたメールを確認できます。

http://localhost:8025/

その他(開発者向け)
----
```
# bash実行
make app
# ログ確認
make logs
make logs-watch
```