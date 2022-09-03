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

ActiveRecord::Schema[7.0].define(version: 2022_09_03_161138) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.string "author"
    t.string "status"
    t.string "storage_place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lends", force: :cascade do |t|
    t.string "status", null: false
    t.date "return_at", null: false
    t.bigint "user_id", null: false
    t.bigint "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_lends_on_book_id"
    t.index ["user_id"], name: "index_lends_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.integer "code", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_users_on_code", unique: true
  end

  add_foreign_key "lends", "books"
  add_foreign_key "lends", "users"
end
