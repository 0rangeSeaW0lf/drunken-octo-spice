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

ActiveRecord::Schema.define(version: 20141217155552) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: true do |t|
    t.integer  "user_id"
    t.string   "given_name"
    t.string   "surname"
    t.integer  "birth_year"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["user_id"], name: "index_accounts_on_user_id", using: :btree

  create_table "rides", force: true do |t|
    t.integer  "user_id"
    t.integer  "seats"
    t.text     "details"
    t.string   "luggage_size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "departure_name"
    t.decimal  "departure_latitute"
    t.decimal  "departure_longitude"
    t.string   "arrival_name"
    t.decimal  "arrival_latitute"
    t.decimal  "arrival_longitude"
  end

  add_index "rides", ["user_id"], name: "index_rides_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "waypoints", force: true do |t|
    t.integer  "ride_id"
    t.string   "waypoint_name"
    t.decimal  "waypoint_latitute"
    t.decimal  "waypoint_longitude"
    t.integer  "leg_cost"
    t.integer  "leg_position"
    t.integer  "waypoint_seats"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "waypoints", ["leg_position"], name: "index_waypoints_on_leg_position", using: :btree
  add_index "waypoints", ["ride_id"], name: "index_waypoints_on_ride_id", using: :btree

end
