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

ActiveRecord::Schema[7.0].define(version: 2023_04_21_143328) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boolean_checklists", force: :cascade do |t|
    t.boolean "boolean_item1", default: false
    t.boolean "ems_lights", default: false
    t.boolean "tires_done", default: false
    t.boolean "oil_checked", default: false
    t.boolean "sirens", default: false
    t.boolean "seatbelts", default: false
    t.boolean "interior_clean", default: false
    t.string "signed_by"
    t.string "shift"
    t.integer "rig_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_checklists", force: :cascade do |t|
    t.integer "extinguisher_min", default: 2
    t.integer "extinguisher_actual", default: 0
    t.integer "towels_min", default: 2
    t.integer "towels_actual", default: 0
    t.integer "adult_cannula_min", default: 4
    t.integer "adult_cannula_actual", default: 0
    t.integer "stethoscope_adult_min", default: 2
    t.integer "stethoscope_adult_actual", default: 0
    t.integer "triage_tags_min", default: 25
    t.integer "triage_tags_actual", default: 0
    t.integer "trauma_dressings_min", default: 4
    t.integer "trauma_dressings_actual", default: 0
    t.integer "roll_gauze_min", default: 12
    t.integer "roll_gauze_actual", default: 0
    t.integer "oral_glucose_min", default: 2
    t.integer "oral_glucose_actual", default: 0
    t.integer "splint_upper_min", default: 2
    t.integer "splint_upper_actual", default: 0
    t.integer "exam_gloves_min", default: 10
    t.integer "exam_gloves_actual", default: 0
    t.integer "shield_min", default: 4
    t.integer "shield_actual", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rig_id"
    t.string "signed_by"
    t.string "shift"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.integer "minimum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manifests", force: :cascade do |t|
    t.integer "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "actual_count"
    t.integer "rig_checklist_id"
  end

  create_table "messages", force: :cascade do |t|
    t.datetime "date"
    t.text "content"
    t.string "shift"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rig_checklists", force: :cascade do |t|
    t.integer "rig_id"
    t.string "signed_by"
    t.boolean "copy", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rigs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false
    t.integer "rig_id"
  end

end
