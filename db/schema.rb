# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_10_03_013011) do

  create_table "accounts", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cast_members", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.text "movies", default: "--- []\n"
    t.text "podcasts", default: "--- []\n"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "curators", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.text "podcasts", default: "--- []\n"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "directors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.text "movies", default: "--- []\n"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "movies", default: "--- []\n"
    t.text "podcasts", default: "--- []\n"
    t.integer "account_id"
    t.index ["account_id"], name: "index_favorites_on_account_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "year"
    t.string "director"
    t.text "cast", default: "--- []\n"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "mood", default: "--- []\n"
  end

  create_table "podcasts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "year"
    t.string "curator"
    t.text "cast", default: "--- []\n"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "mood", default: "--- []\n"
  end

  add_foreign_key "favorites", "accounts"
end
