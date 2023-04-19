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

ActiveRecord::Schema.define(version: 2023_04_19_164947) do

  create_table "blood_sugar_levels", force: :cascade do |t|
    t.integer "user_id"
    t.float "reading"
    t.datetime "reading_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exercise_logs", force: :cascade do |t|
    t.integer "user_id"
    t.string "exercise_name"
    t.integer "duration_minutes"
    t.float "calories_burned"
    t.date "exercise_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "meal_logs", force: :cascade do |t|
    t.integer "meal_id"
    t.string "food_item"
    t.float "carbohydrates"
    t.float "calories"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
  end

  create_table "meals", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.text "description"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medications", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.float "dosage"
    t.string "frequency"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
