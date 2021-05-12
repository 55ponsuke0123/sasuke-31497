# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_12_151344) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "patients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "age", null: false
    t.integer "sex_id", null: false
    t.integer "height"
    t.integer "weight"
    t.string "postal_code"
    t.string "address"
    t.string "family"
    t.string "disease_name", null: false
    t.string "medical_history", null: false
    t.string "surgical_history"
    t.integer "turn_over_id"
    t.integer "get_up_id"
    t.integer "sitting_position_id"
    t.integer "stand_up_id"
    t.integer "standing_id"
    t.integer "transfer_id"
    t.integer "wheelchair_operation_id"
    t.integer "walking_id"
    t.integer "stairs_id"
    t.integer "meal_1_id"
    t.integer "shape_1_id"
    t.integer "balneum_1_id"
    t.integer "outer_wear_id"
    t.integer "under_wear_id"
    t.integer "toilet_1_id"
    t.integer "urination_1_id"
    t.integer "defecation_1_id"
    t.integer "bed_transfer_1_id"
    t.integer "toilet_transfer_1_id"
    t.integer "bathtub_transfer_1_id"
    t.integer "walking_1_id"
    t.integer "stair_1_id"
    t.integer "understanding_1_id"
    t.integer "expression_1_id"
    t.integer "alternating_current_1_id"
    t.integer "solving_1_id"
    t.integer "memory_1_id"
    t.integer "total_1"
    t.integer "meal_2_id"
    t.integer "transfer_2_id"
    t.integer "shape_2_id"
    t.integer "toilet_2_id"
    t.integer "balneum_2_id"
    t.integer "walking_2_id"
    t.integer "stair_2_id"
    t.integer "changing_clothes_id"
    t.integer "urination_2_id"
    t.integer "defecation_2_id"
    t.integer "total_2"
    t.integer "right_upper_limb_brunnstrom_id"
    t.integer "left_upper_limb_brunnstrom_id"
    t.integer "right_lower_limb_brunnstrom_id"
    t.integer "left_lower_limb_brunnstrom_id"
    t.integer "right_finger_brunnstrom_id"
    t.integer "left_finger_brunnstrom_id"
    t.integer "relationship_sole_id"
    t.integer "left_right_difference_id"
    t.string "pain_area"
    t.string "appearance_time"
    t.string "degree_of_pain"
    t.integer "factor_tissue_id"
    t.string "rom_part_degree"
    t.integer "joint_capsule_id"
    t.integer "soft_tissue_id"
    t.string "muscle_weakness"
    t.string "muscle_weakness_factor"
    t.string "paresthesia"
    t.string "paresthesia_impact"
    t.integer "alignment_id"
    t.text "alignment_comment"
    t.integer "postural_tension_id"
    t.integer "impact_id"
    t.integer "right_smd"
    t.integer "left_smd"
    t.integer "right_tmd"
    t.integer "left_tmd"
    t.string "foot_length_comment"
    t.integer "speed"
    t.string "stride"
    t.string "durability"
    t.string "walking_pattern"
    t.string "foot_position"
    t.integer "upset_id"
    t.integer "redundancy_id"
    t.integer "applicability_id"
    t.integer "gait_id"
    t.string "dementia_degree"
    t.text "impact_daily_life"
    t.text "higher_brain_dysfunction_comment"
    t.string "sense_cooperation"
    t.string "sense_cooperation_impact"
    t.text "others"
    t.text "generalization"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "moving_on_bed_id"
    t.index ["user_id"], name: "index_patients_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "facility_name"
    t.string "department_name"
    t.string "therapist_name", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "patients", "users"
end
