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

ActiveRecord::Schema.define(version: 20160605130558) do

  create_table "genres", force: :cascade do |t|
    t.string   "genre",      limit: 8, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "name",       limit: 32,                          null: false
    t.decimal  "longitude",              precision: 9, scale: 6, null: false
    t.decimal  "latitude",               precision: 9, scale: 6, null: false
    t.string   "postcode",   limit: 8,                           null: false
    t.string   "address",    limit: 256
    t.string   "about",      limit: 256
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  create_table "places_genres", force: :cascade do |t|
    t.integer  "place_id",   limit: 4, null: false
    t.integer  "genre_id",   limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "places_genres", ["genre_id"], name: "index_places_genres_on_genre_id", using: :btree
  add_index "places_genres", ["place_id"], name: "index_places_genres_on_place_id", using: :btree

  add_foreign_key "places_genres", "genres"
  add_foreign_key "places_genres", "places"
end
