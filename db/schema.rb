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

ActiveRecord::Schema.define(version: 2019_03_15_035615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cocktail_ingredients", force: :cascade do |t|
    t.bigint "ingredient_id"
    t.bigint "cocktail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "qty"
    t.index ["cocktail_id"], name: "index_cocktail_ingredients_on_cocktail_id"
    t.index ["ingredient_id"], name: "index_cocktail_ingredients_on_ingredient_id"
  end

  create_table "cocktails", force: :cascade do |t|
    t.string "name"
    t.text "instructions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "examples", force: :cascade do |t|
    t.text "text", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_examples_on_user_id"
  end

  create_table "ingredient_users", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ingredient_id"], name: "index_ingredient_users_on_ingredient_id"
    t.index ["user_id"], name: "index_ingredient_users_on_user_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "ingredient_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "checked_status"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "token", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["token"], name: "index_users_on_token", unique: true
  end

  add_foreign_key "cocktail_ingredients", "cocktails"
  add_foreign_key "cocktail_ingredients", "ingredients"
  add_foreign_key "examples", "users"
  add_foreign_key "ingredient_users", "ingredients"
  add_foreign_key "ingredient_users", "users"
end
