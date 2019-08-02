# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_07_18_155338) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chores", force: :cascade do |t|
    t.string "title"
    t.boolean "complete", default: false
    t.string "description"
    t.datetime "due"
    t.bigint "user_id"
    t.bigint "occupant_id"
    t.index ["occupant_id"], name: "index_chores_on_occupant_id"
    t.index ["user_id"], name: "index_chores_on_user_id"
  end

  create_table "grocery_items", force: :cascade do |t|
    t.string "category"
    t.string "title"
    t.string "image"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_grocery_items_on_user_id"
  end

  create_table "occupants", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "relationship"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_occupants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
  end

end
