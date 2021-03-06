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

ActiveRecord::Schema.define(version: 20160907132857) do

  create_table "trips", force: :cascade do |t|
    t.text     "city",          limit: 65535
    t.text     "country",       limit: 65535
    t.datetime "in"
    t.datetime "out"
    t.integer  "user_id",       limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "activity",      limit: 255
    t.datetime "activity_date"
  end

  add_index "trips", ["user_id", "created_at"], name: "index_trips_on_user_id_and_created_at", using: :btree
  add_index "trips", ["user_id"], name: "index_trips_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "email",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "password_digest", limit: 255
    t.string   "provider",        limit: 255
    t.string   "uid",             limit: 255
    t.string   "image",           limit: 255
    t.string   "token",           limit: 255
    t.datetime "expires_at"
    t.datetime "activity_date"
    t.string   "nickname",        limit: 255
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "location",        limit: 255
    t.string   "description",     limit: 255
  end

  add_foreign_key "trips", "users"
end
