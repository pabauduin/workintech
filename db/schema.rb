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

ActiveRecord::Schema.define(version: 2019_08_29_090624) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.bigint "question_id"
    t.bigint "form_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "points"
    t.index ["form_id"], name: "index_answers_on_form_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "forms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "visitor_uuid"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "game_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.text "short_description"
    t.string "variable1"
    t.string "variable2"
    t.string "variable3"
    t.string "background_image"
    t.string "action_image"
    t.string "solution_variable1"
    t.string "solution_variable2"
    t.string "solution_variable3"
    t.string "game_type_image"
    t.string "logo"
    t.string "instructions"
    t.integer "difficulty"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "address"
  end

  create_table "questions", force: :cascade do |t|
    t.text "answer_1"
    t.text "answer_2"
    t.integer "value_1"
    t.integer "value_2"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visitors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "city"
    t.string "gender"
    t.string "uuid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "answers", "forms"
  add_foreign_key "answers", "questions"
end
