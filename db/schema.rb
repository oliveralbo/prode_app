# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_14_002330) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bets", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "match_id", null: false
    t.integer "home_score"
    t.integer "away_score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_bets_on_match_id"
    t.index ["user_id"], name: "index_bets_on_user_id"
  end

  create_table "championships", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "team_count"
    t.string "round_type"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "championship_id", null: false
    t.string "home_team"
    t.string "away_team"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["championship_id"], name: "index_matches_on_championship_id"
  end

  create_table "points", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "championship_id", null: false
    t.integer "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["championship_id"], name: "index_points_on_championship_id"
    t.index ["user_id"], name: "index_points_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "championship_id", null: false
    t.index ["championship_id"], name: "index_users_on_championship_id"
  end

  add_foreign_key "bets", "matches"
  add_foreign_key "bets", "users"
  add_foreign_key "matches", "championships"
  add_foreign_key "points", "championships"
  add_foreign_key "points", "users"
  add_foreign_key "users", "championships"
end
