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

ActiveRecord::Schema.define(version: 20161019174706) do

  create_table "bullyings", force: :cascade do |t|
    t.integer  "bully_id"
    t.integer  "bulled_id"
    t.text     "description"
    t.integer  "votes"
    t.boolean  "the_best"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["bulled_id"], name: "index_bullyings_on_bulled_id"
    t.index ["bully_id"], name: "index_bullyings_on_bully_id"
  end

  create_table "first_names", force: :cascade do |t|
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.string   "phrase"
    t.string   "who"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
