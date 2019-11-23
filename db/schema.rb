# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_23_151550) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "foods", force: :cascade do |t|
    t.string "name"
    t.integer "carbs"
    t.integer "fat"
    t.integer "protein"
    t.integer "calories"
  end

  create_table "meal_foods", force: :cascade do |t|
    t.integer "food_id"
    t.integer "meal_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "name"
    t.integer "calories"
    t.integer "carbs"
    t.integer "fat"
    t.integer "protein"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.string "gender"
    t.integer "age"
    t.integer "height"
    t.integer "weight"
    t.integer "activityLevel"
    t.integer "BMR"
    t.integer "calories"
    t.integer "carbPercent"
    t.integer "fatPercent"
    t.integer "proteinPercent"
    t.integer "carbCalories"
    t.integer "fatCalories"
    t.integer "proteinCalories"
  end

end
