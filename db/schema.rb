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

ActiveRecord::Schema.define(version: 2019_03_10_231816) do

  create_table "initiatives", force: :cascade do |t|
    t.string "title"
    t.integer "objective_id"
    t.integer "score", limit: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["objective_id"], name: "index_initiatives_on_objective_id"
  end

  create_table "objectives", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "user_id"
    t.integer "score", limit: 2
    t.integer "length", limit: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "state"
    t.index ["user_id"], name: "index_objectives_on_user_id"
  end

  create_table "user_credentials", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_user_credentials_on_user_id"
    t.index ["username"], name: "index_user_credentials_on_username", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "date_of_birth"
    t.string "occupation"
    t.string "about"
    t.string "school"
    t.string "company"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
