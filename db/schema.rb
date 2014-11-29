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

ActiveRecord::Schema.define(version: 20141129090521) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "photos", force: true do |t|
    t.text     "url"
    t.integer  "width"
    t.integer  "height"
    t.integer  "venue_id"
    t.string   "source_id"
    t.string   "source",     default: "foursquare"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "photos", ["source_id"], name: "index_photos_on_source_id", using: :btree
  add_index "photos", ["venue_id"], name: "index_photos_on_venue_id", using: :btree

  create_table "users", force: true do |t|
    t.integer  "age"
    t.string   "country_origin"
    t.string   "device_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "users", ["age"], name: "index_users_on_age", using: :btree
  add_index "users", ["country_origin"], name: "index_users_on_country_origin", using: :btree
  add_index "users", ["device_id"], name: "index_users_on_device_id", unique: true, using: :btree

  create_table "venues", force: true do |t|
    t.text     "address_blob"
    t.string   "tags",                default: [],                        array: true
    t.string   "name"
    t.float    "rating"
    t.text     "tip"
    t.integer  "avg_time_spent"
    t.integer  "best_time_for_visit"
    t.decimal  "latitude"
    t.decimal  "longigtude"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "source",              default: "foursquare"
    t.string   "source_id"
  end

  add_index "venues", ["avg_time_spent"], name: "index_venues_on_avg_time_spent", using: :btree
  add_index "venues", ["best_time_for_visit"], name: "index_venues_on_best_time_for_visit", using: :btree
  add_index "venues", ["name"], name: "index_venues_on_name", using: :btree
  add_index "venues", ["rating"], name: "index_venues_on_rating", using: :btree
  add_index "venues", ["source_id"], name: "index_venues_on_source_id", using: :btree
  add_index "venues", ["tags"], name: "index_venues_on_tags", using: :gin

end
