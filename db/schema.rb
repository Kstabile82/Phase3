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

ActiveRecord::Schema.define(version: 2022_04_10_153008) do

  create_table "animals", force: :cascade do |t|
    t.string "type"
    t.string "breed"
    t.string "name"
    t.boolean "adoption_status"
    t.integer "project_id"
    t.integer "volunteer_id"
    t.integer "age"
    t.string "color"
    t.string "sex"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.string "type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "proj_type"
  end

  create_table "rescues", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "skill"
  end

  create_table "volunteer_skills", force: :cascade do |t|
    t.integer "volunteer_id"
    t.integer "skill_id"
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "name"
    t.string "talents"
    t.string "location"
    t.integer "rescue_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
