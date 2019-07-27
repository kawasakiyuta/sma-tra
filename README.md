# README


## users table
gender columnについては以下を参照し，Male	1 (one)	Female	2 (two)	とする．
https://qiita.com/aoshirobo/items/32deb45cb8c8b87d65a4

|Column|Type|Options|
|------|----|-------|
|cust_last_name|string|null: false|
|cust_first_name|string|null: false|
|cust_email_address|string|null: false, unique: true|
|gender|string|null: false|
|encrypted_password|string|null: false|
|phone|string|null: false, unique: true|
|birth_date|date|null: false|
|proxy_last_name|string|null: false|
|proxy_first_name|string|null: false|
|proxy_email_address|string|null: false|

### Association
- has_many :subscriptions


## services table
解約に必要な事項にビットを立てる．
（例：必要なら1，不要なら0）

|Column|Type|Options|
|------|----|-------|
|service_name|string|null: false|
|req_email_address|integer|null: false|
|req_password|integer|null: false|
|req_phone|integer|null: false|
|req_birth_date|integer|null: false|

### Association
- has_many :subscriptions

## subscription table

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|service_id|integer|null: false, foreign_key: true|
|email_address|string|null: false|
|password|string|null: false|
|phone|string|null: false|
|birth_date|date|null: false|
|last_login_at|datetime|null: false|

### Association
- belongs_to :user
- belongs_to :service




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
