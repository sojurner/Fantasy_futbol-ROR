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

ActiveRecord::Schema.define(version: 2019_03_16_232921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "league_user_players", force: :cascade do |t|
    t.integer "league_user_id"
    t.integer "player_id"
  end

  create_table "league_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "league_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_stats", force: :cascade do |t|
    t.string "Name"
    t.string "Age"
    t.string "Photo"
    t.string "Club_Logo"
    t.string "Nationality"
    t.string "Positions"
    t.string "Club"
    t.string "Overall"
    t.string "Potential"
    t.string "Value"
    t.string "Wage"
    t.string "Acceleration"
    t.string "Aggression"
    t.string "Agility"
    t.string "Balance"
    t.string "Ball_control"
    t.string "Composure"
    t.string "Crossing"
    t.string "Curve"
    t.string "Dribbling"
    t.string "Finishing"
    t.string "Free_kick_accuracy"
    t.string "GK_diving"
    t.string "GK_handling"
    t.string "GK_kicking"
    t.string "GK_positioning"
    t.string "GK_reflexes"
    t.string "Heading_accuracy"
    t.string "Interceptions"
    t.string "Jumping"
    t.string "Long_passing"
    t.string "Long_shots"
    t.string "Marking"
    t.string "Penalties"
    t.string "Positioning"
    t.string "Reactions"
    t.string "Short_passing"
    t.string "Shot_power"
    t.string "Sliding_tackle"
    t.string "Sprint_speed"
    t.string "Stamina"
    t.string "Standing_tackle"
    t.string "Strength"
    t.string "Vision"
    t.string "Volleys"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "player_stat_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "user_name"
    t.string "email"
    t.string "password_digest"
    t.integer "league_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
