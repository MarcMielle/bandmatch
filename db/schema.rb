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

ActiveRecord::Schema.define(version: 2020_08_25_102156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bands", force: :cascade do |t|
    t.string "name"
    t.string "music_style"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "conversations", force: :cascade do |t|
    t.bigint "user1_id", null: false
    t.bigint "user2_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user1_id"], name: "index_conversations_on_user1_id"
    t.index ["user2_id"], name: "index_conversations_on_user2_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "conversation_id", null: false
    t.bigint "author_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_messages_on_author_id"
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
  end

  create_table "preferences", force: :cascade do |t|
    t.string "entity_type", null: false
    t.bigint "entity_id", null: false
    t.string "instrument"
    t.integer "age_min"
    t.integer "age_max"
    t.string "gender"
    t.integer "years_of_experience_min"
    t.integer "weekly_rehearsal_frequency"
    t.string "location"
    t.integer "location_radius_in_km"
    t.string "music_style"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["entity_type", "entity_id"], name: "index_preferences_on_entity_type_and_entity_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "location"
    t.string "gender"
    t.integer "years_of_experience"
    t.bigint "band_id", null: false
    t.string "instrument"
    t.string "music_styles", default: [], array: true
    t.integer "weekly_rehearsal_frequency"
    t.text "bio"
    t.string "soundcloud_url"
    t.float "latitude"
    t.float "longitude"
    t.index ["band_id"], name: "index_users_on_band_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "conversations", "users", column: "user1_id"
  add_foreign_key "conversations", "users", column: "user2_id"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users", column: "author_id"
  add_foreign_key "users", "bands"
end
