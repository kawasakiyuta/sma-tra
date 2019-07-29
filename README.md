# README


## users table
gender columnについては以下を参照し，Male	1 (one)	Female	2 (two)	とする．
https://qiita.com/aoshirobo/items/32deb45cb8c8b87d65a4

|Column|Type|Options|
|------|----|-------|
|cust_last_name|string|null: false|
|cust_first_name|string|null: false|
|gender|integer|null: false|
|cust_email_address|string|null: false, unique: true|
|phone|string|null: false, unique: true|
|encrypted_password|string|null: false|
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

## subscriptions table

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|service_id|integer|null: false, foreign_key: true|
|email_address|string|null: false|
|password|string|null: false|
|phone|string||
|birth_date|date||
|last_login_at|datetime|null: false|
|in_use|integer|null: false|

### Association
- belongs_to :user
- belongs_to :service

