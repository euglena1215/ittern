# README

## セットアップ
* Graphvizをインストールする(rails-erdで利用)
`brew install graphviz`
https://voormedia.github.io/rails-erd/install.html

* 各種コマンドを実行
`bundle install --path vendor/bundle`
`bundle exec rake db:create`
`bundle exec rake db:migrate`
`bundle exec rake db:seed_fu`

* .envファイルをコピーして諸々設定する
`cp .env.sample .env`

### アプリケーションから送信されたメールを確認する方法
`/letter_opener` にアクセスする

---

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
