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

ActiveRecord::Schema.define(version: 20210706065747) do

  create_table "players", force: :cascade do |t|
    t.string   "team"
    t.string   "name"
    t.integer  "number"
    t.date     "birthday"
    t.integer  "old"
    t.string   "place"
    t.integer  "height"
    t.integer  "weight"
    t.string   "group"
    t.string   "position"
    t.date     "draht"
    t.date     "total"
    t.string   "career"
    t.string   "image_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scores", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "season"
    t.integer  "hits"
    t.integer  "double"
    t.integer  "triple"
    t.integer  "home_run"
    t.decimal  "avarage"
    t.integer  "points"
    t.integer  "win"
    t.integer  "lose"
    t.integer  "hold"
    t.integer  "close"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string   "username"
    t.string   "profile"
    t.string   "profile_image_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
