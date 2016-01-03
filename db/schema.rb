# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151103175239) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "messages", force: :cascade do |t|
    t.string   "title",      null: false
    t.text     "content",    null: false
    t.string   "image_uri"
    t.integer  "trainer_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "messages", ["trainer_id"], name: "index_messages_on_trainer_id", using: :btree
  add_index "messages", ["user_id"], name: "index_messages_on_user_id", using: :btree

  create_table "schedules", force: :cascade do |t|
    t.string   "title",                                     null: false
    t.text     "description",                               null: false
    t.string   "area_focus"
    t.date     "start_date",         default: '2015-12-30'
    t.date     "end_date"
    t.string   "frequency_interval"
    t.integer  "trainer_id"
    t.integer  "user_id"
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "schedules", ["trainer_id"], name: "index_schedules_on_trainer_id", using: :btree
  add_index "schedules", ["user_id"], name: "index_schedules_on_user_id", using: :btree

  create_table "trainers", force: :cascade do |t|
    t.string   "account_name",                                          null: false
    t.string   "password_digest"
    t.string   "email",                                                 null: false
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "image_uri",       default: "default-profile-image.jpg"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.integer  "zip"
    t.integer  "user_id"
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "account_name",                                          null: false
    t.string   "password_digest"
    t.string   "email",                                                 null: false
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "image_uri",       default: "default-profile-image.jpg"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.integer  "zip"
    t.integer  "current_weight"
    t.integer  "goal_weight"
    t.date     "reach_goal_by"
    t.integer  "height"
    t.integer  "trainer_id"
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  add_index "users", ["trainer_id"], name: "index_users_on_trainer_id", using: :btree

  add_foreign_key "messages", "trainers"
  add_foreign_key "messages", "users"
  add_foreign_key "schedules", "trainers"
  add_foreign_key "schedules", "users"
  add_foreign_key "users", "trainers"
end
