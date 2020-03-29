# CRM-Nekoyashiki DB設計

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
