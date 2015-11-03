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

ActiveRecord::Schema.define(version: 20151103005345) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "messages", force: :cascade do |t|
    t.string   "title",      null: false
    t.string   "content",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "name",               null: false
    t.string   "description",        null: false
    t.string   "area_focus"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "frequency_interval"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

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
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "account_name"
    t.string   "password_digest"
    t.string   "email"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "image_uri"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.integer  "zip"
    t.integer  "current_weight"
    t.integer  "goal_weight"
    t.date     "reach_goal_by"
    t.integer  "height"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
