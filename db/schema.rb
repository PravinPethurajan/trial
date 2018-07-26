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

ActiveRecord::Schema.define(version: 2018_07_25_124424) do

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.text "synopsis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "category"
    t.string "author"
    t.boolean "lend", default: false
  end

  create_table "carts", force: :cascade do |t|
    t.string "name"
    t.integer "book_id"
    t.integer "customer_id"
    t.datetime "issue_date"
    t.datetime "due_date"
  end

# Could not dump table "customers" because of following StandardError
#   Unknown type 'String' for column 'name1'

  create_table "custs", force: :cascade do |t|
    t.string "name"
    t.integer "book_id"
    t.integer "customer_id"
    t.datetime "issue_date"
    t.datetime "due_date"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin", default: false
  end

end
