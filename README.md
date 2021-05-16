# アプリケーション名
sasuke-31497

# アプリケーション概要
作業療法士の評価アプリ

# URL
https://sasuke-31497.herokuapp.com

# テスト用アカウント
（Basic認証）
ID:admin, Pass:2222
（ユーザー）
email:matsu@docomo.ne.jp, password:matsumatsu123

# 利用方法
新規登録後、患者の情報やリハビリを行う上で必要な主な評価・検査を登録する。必要に応じて編集・削除も可能。

# 目指した課題解決
セラピストが必要な評価や検査を選択しやすくすると同時に、他職種が評価や検査結果を閲覧できるようにし、情報を共有できるようにする。

# 洗い出した要件
優先度:2
機能:ActiveStrage
目的:レントゲンなどの画像も添付できるようにするため
詳細:例えば脳血管疾患などは、梗塞や出血の箇所で症状や予想される後遺症（障害）が全く異なるため、医療情報をより充実させるためにも、画像は必要不可欠と言える
ユースケース:セラピストが症状や障害の見立てをしやすく、かつ計画書やプログラム立案に活かせるようにする
所要時間:1h


優先度:1
機能:登録患者一覧表示
目的:各職種が患者情報を共有するため
詳細:ユーザーの新規登録を行い、パスワードと
ユースケース:連絡帳は家庭と保育園等の施設をつなぐ大事な情報交換ツールなので、記録に漏れがないようにする
所要時間:2h

# 実装した機能についての画像やGIF
右上に「ログインする」「新規登録する」という文字があり、それぞれをクリックして必要なページに遷移するようにする。利用には新規登録が必要である。
ユーザー登録が完了したら右上には「ログアウトする」の文字が表示され、「あつまれ！スクスク組さん！！」の「スクスク」という部分が登録したクラス名に変わる。また新規登録後（もしくはログイン後）は下部中央に「入室する」のボタンが表示されるので、ここをクリックして連絡帳のページへ遷移する。
必須事項は出欠のみだが、出席の場合と欠席の場合でそれぞれ質問項目がある（これら質問事項への回答は任意）。記入を終えて「送信する」のボタンをクリックすると、連絡帳が送信され送信完了ページが表示される。

<挙動確認動画>
1.新規登録
![movie1](https://user-images.githubusercontent.com/74514503/114265072-bcfd8500-9a29-11eb-9d5f-2cb50a275c6a.gif)

2.連絡帳記述〜送信
![movie2](https://user-images.githubusercontent.com/74514503/114265160-46ad5280-9a2a-11eb-89c5-2064dee63755.gif)

3.ログイン
![movie3](https://user-images.githubusercontent.com/74514503/114265211-8411e000-9a2a-11eb-9d87-1aa6a23b9551.gif)




# データベース設計

##  users テーブル
| Column              | Type       | Options                    |
| ------------------- | ---------- | -------------------------- |
| facility_name       | string     |                            |
| department_name     | string     |                            |
| therapist_name      | string     | null: false                |
| email               | string     | null: false, unique: true  |
| encrypted_password  | string     | null: false                |

### Association
has_many :patients

##  patients テーブル
| Column                          | Type          | Options                        |
| ------------------------------- | ------------- | ------------------------------ |
| name                            | string        | null: false                    |
| age                             | integer       | null: false                    |
| sex_id                          | integer       | null: false                    |
| height                          | integer       |                                |
| weight                          | integer       |                                |
| postal_code                     | string        |                                |
| address                         | string        |                                |
| family                          | string        |                                |
| disease_name                    | string        | null: false                    |
| medical_history                 | string        | null: false                    |
| surgical_history                | string        |                                |
| therapist_in_charge             | string        | null: false                    |
| turn_over_id                    | integer       |                                |
| moving_on_bed_id                | integer       |                                |
| get_up_id                       | integer       |                                |
| sitting_position_id             | integer       |                                |
| stand_up_id                     | integer       |                                |
| standing_id                     | integer       |                                |
| transfer_id                     | integer       |                                |
| wheelchair_operation_id         | integer       |                                |
| walking_id                      | integer       |                                |
| stairs_id                       | integer       |                                |
| meal_1_id                       | integer       |                                |
| shape_1_id                      | integer       |                                |
| balneum_1_id                    | integer       |                                |
| outer_wear_id                   | integer       |                                |
| under_wear_id                   | integer       |                                |
| toilet_1_id                     | integer       |                                |
| urination_1_id                  | integer       |                                |
| defecation_1_id                 | integer       |                                |
| bed_transfer_1_id               | integer       |                                |
| toilet_transfer_1_id            | integer       |                                |
| bathtub_transfer_1_id           | integer       |                                |
| walking_1_id                    | integer       |                                |
| stair_1_id                      | integer       |                                |
| understanding_1_id              | integer       |                                |
| expression_1_id                 | integer       |                                |
| alternating_current_1_id        | integer       |                                |
| solving_1_id                    | integer       |                                |
| memory_1_id                     | integer       |                                |
| total_1                         | integer       |                                |
| meal_2_id                       | integer       |                                |
| transfer_2_id                   | integer       |                                |
| shape_2_id                      | integer       |                                | 
| toilet_2_id                     | integer       |                                | 
| balneum_2_id                    | integer       |                                |      
| walking_2_id                    | integer       |                                |
| stair_2_id                      | integer       |                                |
| changing_clothes_id             | integer       |                                |
| urination_2_id                  | integer       |                                |
| defecation_2_id                 | integer       |                                |
| total_2                         | integer       |                                |
| right_upper_limb_brunnstrom_id  | integer       |                                |
| left_upper_limb_brunnstrom_id   | integer       |                                |
| right_lower_limb_brunnstrom_id  | integer       |                                |
| left_lower_limb_brunnstrom_id   | integer       |                                |
| right_finger_brunnstrom_id      | integer       |                                |
| left_finger_brunnstrom_id       | integer       |                                |
| relationship_sole_id            | integer       |                                |
| left_right_difference_id        | integer       |                                |
| pain_area                       | string        |                                |
| appearance_time                 | string        |                                |
| degree_of_pain                  | string        |                                |
| factor_tissue_id                | integer       |                                |          
| rom_part_degree                 | string        |                                |
| joint_capsule_id                | integer       |                                |
| soft_tissue_id                  | integer       |                                |
| muscle_weakness                 | string        |                                |
| muscle_weakness_factor          | string        |                                |
| paresthesia                     | string        |                                |
| paresthesia_impact              | string        |                                |
| alignment_id                    | integer       |                                |
| alignment_comment               | text          |                                |
| postural_tension_id             | integer       |                                |
| impact_id                       | integer       |                                |
| right_smd                       | integer       |                                |
| left_smd                        | integer       |                                |
| right_tmd                       | integer       |                                |
| left_tmd                        | integer       |                                |
| foot_length_comment             | string        |                                |
| speed                           | integer       |                                |
| stride                          | string        |                                |
| durability                      | string        |                                |
| walking_pattern                 | string        |                                |
| foot_position                   | string        |                                |
| upset_id                        | integer       |                                |
| redundancy_id                   | integer       |                                |
| applicability_id                | integer       |                                |
| gait_id                         | integer       |                                |
| dementia_degree                 | string        |                                |
| impact_daily_life               | text          |                                |
| higher_brain_dysfunction_comment| text          |                                |
| sense_cooperation               | string        |                                |
| sense_cooperation_impact        | string        |                                |
| others                          | text          |                                |
| generalization                  | text          |                                |
| user                            | references    | null: false, foreign_key: true |

### Association
belongs_to :user
