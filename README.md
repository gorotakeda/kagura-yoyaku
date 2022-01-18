# アプリケーション名
 KAGURA-YOYAKU
# アプリケーション概要
 
# URL
- 本番環境 
- GitHub https://github.com/gorotakeda/kagura-yoyaku

# 目指した課題解決
 現職の神社は会社・団体の神楽（祈祷）予約を電話又はFAXでしか行えていない、事務処理に時間がかかるのと、漢字聞き間違いだったりのヒューマンエラーがよく起こるので、WEB予約システムを導入することでこれらの業務効率化を目指す。

# テーブル設計
## companies テーブル

| Column                | Type     | Options      |
|-----------------------|----------|--------------|
| id                    | integer  | null: false  |
| name                  | string   | null: false  |
| name_kana             | string   | null: false  |
| prefecture_id         | integer  | null: false  |
| city                  | string   | null: false  |
| city_kana             | string   | null: false  |
| address               | string   | null: false  |
| build_name            | string   |              |
| build_name_kana       | string   |              |
| phone_number          | string   | null: false  |
| position              | string   |              |
| president_name        | string   | null: false  |
| president_name_kana   | string   | null: false  |
| created_at            | datetime | null: false  |
| updated_at            | datetime | null: false  |

### Association

- has_one :　user
- has_one : reservation

## usersテーブル

| Column             | Type       | Options                        |
|--------------------|------------|--------------------------------|
| id                 | integer    | null: false                    |
| name               | string     | null: false                    |
| encrypted_password | string     | null: false                    |
| email              | string     | unique: true                   |
| company_id         | references | null: false, foreign_key: true |
| created_at         | datetime   | null: false                    |
| updated_at         | datetime   | null: false                    |

### Association

- belongs_to : company

## reservationsテーブル

| Column     | Type       | Options                        |
|------------|------------|--------------------------------|
| id         | integer    | null: false                    |
| price      | integer    | null: false                    |
| seat       | integer    | null: false                    |
| date       | datetime   | null: false                    |
| request_1  | integer    | null: false                    |
| request_2  | integer    |                                |
| company_id | references | null: false, foreign_key: true |
| created_at | datetime   | null: false                    |
| updated_at | datetime   | null: false                    |

### Association
- belongs_to : company


## seatsテーブル

|Column      |Type        |Options                         |
|------------|------------|--------------------------------|
| id         | integer    | null: false                    |
| range      | string     | null: false                    |
| price      | integer    | null: false                    | 
| created_at | datetime   | null: false                    |
| updated_at | datetime   | null: false                    |
### Association
