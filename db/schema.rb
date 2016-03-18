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

ActiveRecord::Schema.define(version: 20160318142753) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "city_id"
    t.integer  "district_id"
    t.integer  "province_id"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "addresses", ["city_id"], name: "index_addresses_on_city_id"
  add_index "addresses", ["district_id"], name: "index_addresses_on_district_id"
  add_index "addresses", ["province_id"], name: "index_addresses_on_province_id"
  add_index "addresses", ["question_id"], name: "index_addresses_on_question_id"

  create_table "answers", force: :cascade do |t|
    t.string   "content"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "question_id"
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.integer  "province_id"
    t.integer  "level"
    t.string   "zip_code"
    t.string   "name_en"
    t.string   "name_abbr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cities", ["name"], name: "index_cities_on_name"

  create_table "districts", force: :cascade do |t|
    t.string   "name"
    t.integer  "city_id"
    t.string   "name_en"
    t.string   "name_abbr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "districts", ["name"], name: "index_districts_on_name"

  create_table "provinces", force: :cascade do |t|
    t.string   "name"
    t.string   "name_en"
    t.string   "name_abbr"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "provinces", ["name"], name: "index_provinces_on_name"

  create_table "questions", force: :cascade do |t|
    t.string   "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "survey_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
