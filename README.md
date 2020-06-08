# アプリ名
CRM-nekoyashiki
# 概要
法人のCRMです。顧客情報を登録し、その顧客に対して取ったコンタクトについて記録します。
# 本番環境(デプロイ先　テストアカウント)
- デプロイ先のURL:https://crm-nekoyashiki.herokuapp.com/
- テスト用アカウント: test@gmail.com
- パスワード:aaaaaa

# 制作背景(意図)
新卒で入社した会社がERPパッケージソフトを販売しているにもかかわらず紙ベースでの顧客管理の運用でした。その当時のことを思い出しながら、制作してみました。

# DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)
https://gyazo.com/ab73ba83eed44a1b04abeb7f083b020d
# 工夫したポイント
- bulk_insertを使って共通のコンタクト情報を一括で登録できる機能を実装
（DM一斉送信などで使用）
- 新規登録はモーダルウィンドウを使用し、画面遷移を減らした点
# 使用技術(開発環境)
Ruby2.5.1/Rails5.2.4/JavaScript
# 課題や今後実装したい機能
- 検索機能の充実（いろんな項目での検索）
- 顧客新規一括登録
- Rspecでのテストコード



# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :clients

## clientsテーブル
|Column|Type|Options|
|------|----|-------|
|client_name1|string|null: false,index: true|
|client_name2|string||
|postcode|string||
|add1|string||
|add2|string||
|add3|string||
|tel|string||
|fax|string||
|client_person_in_charge|string||
|mobile|string||
|url|string||
|email|string||
|client_rank|integer|active_hash|
|client_cat|integer|active_hash|
|closing_day|integer|active_hash|
|payment_day|integer|active_hash|
|payment_method|integer|active_hash|
|user|references|foreign_key: true|
### Association
- has_many :contacts
- belongs_to :user

## contactsテーブル
|Column|Type|Options|
|------|----|-------|
|act_cat|integer|active_hash|
|detail|text|null: false|
|start_date|datetime||
|end_date|datetime||
|in_progress|boolean||
|client|references|foreign_key: true|
### Association
- belongs_to :client


# README

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
