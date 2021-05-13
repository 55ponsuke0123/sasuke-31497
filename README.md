# テーブル設計

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
