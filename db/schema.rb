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

ActiveRecord::Schema[7.0].define(version: 2023_02_18_212719) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checklists", force: :cascade do |t|
    t.boolean "exterior_clean", default: false
    t.boolean "interior_clean", default: false
    t.boolean "seatbelts", default: false
    t.boolean "meds_climate", default: false
    t.boolean "adjustable_wrench", default: false
    t.boolean "flat_screwdriver", default: false
    t.boolean "phillips_screwdriver", default: false
    t.boolean "center_punch", default: false
    t.integer "cones_min", default: 3
    t.integer "cones_actual"
    t.boolean "dot_erg", default: false
    t.boolean "emergency_lights", default: false
    t.boolean "grill_lights", default: false
    t.boolean "siren", default: false
    t.boolean "reflective_markings", default: false
    t.boolean "vehicle_to_base", default: false
    t.boolean "vehicle_to_vehicle", default: false
    t.boolean "flashlight", default: false
    t.integer "extinguisher_min", default: 2
    t.integer "extinguisher_actual", default: 0
    t.integer "traffic_wear_min", default: 2
    t.integer "traffic_wear_actual", default: 2
    t.boolean "sharps_container", default: false
    t.boolean "stretcher", default: false
    t.boolean "no_smoke", default: false
    t.integer "towels_min", default: 2
    t.integer "towels_actual", default: 0
    t.integer "blankets_min", default: 2
    t.integer "blankets_actual", default: 0
    t.integer "pillows_min", default: 2
    t.integer "pillows_actual", default: 0
    t.integer "pillowcases_min", default: 2
    t.integer "pillowcases_actual", default: 0
    t.integer "sheets_min", default: 4
    t.integer "sheets_actual", default: 0
    t.boolean "urinal", default: false
    t.boolean "bedpan", default: false
    t.boolean "toilet_paper", default: false
    t.boolean "aed", default: false
    t.integer "pocket_mask_min", default: 2
    t.integer "pocket_mask_actual", default: 0
    t.integer "op_airway_min", default: 6
    t.integer "op_airway_actual", default: 0
    t.integer "np_airway_min", default: 4
    t.integer "np_airway_actual", default: 0
    t.boolean "lubricant", default: false
    t.boolean "bvm", default: false
    t.boolean "bvm_mask_adult", default: false
    t.boolean "bvm_mask_peds", default: false
    t.integer "cylinder_psi", default: 0
    t.integer "nrb_adult_min", default: 4
    t.integer "nrb_adult_actual", default: 0
    t.integer "nrb_peds_min", default: 4
    t.integer "nrb_peds_actual", default: 0
    t.integer "adult_cannula_min", default: 4
    t.integer "adult_cannula_actual", default: 0
    t.integer "peds_cannula_min", default: 4
    t.integer "peds_cannula_actual", default: 0
    t.boolean "suction", default: false
    t.boolean "suction_catheters", default: false
    t.integer "stethoscope_adult_min", default: 2
    t.integer "stethoscope_adult_actual", default: 0
    t.boolean "stethoscope_peds", default: false
    t.boolean "bp_adult", default: false
    t.boolean "bp_peds", default: false
    t.integer "vinyl_tape_min", default: 4
    t.integer "vinyl_tape_actual", default: 0
    t.integer "triage_tags_min", default: 25
    t.integer "triage_tags_actual", default: 0
    t.boolean "penlight", default: false
    t.boolean "med_protocols", default: false
    t.boolean "drug_kit", default: false
    t.boolean "ecg", default: false
    t.integer "a_ecg_electrode_min", default: 2
    t.integer "a_ecg_electrode_actual", default: 0
    t.integer "p_ecg_electrode_min", default: 2
    t.integer "p_ecg_electrode_actual", default: 0
    t.integer "a_defib_electrode_min", default: 2
    t.integer "a_defib_electrode_actual", default: 0
    t.integer "p_defib_electrode_min", default: 2
    t.integer "p_defib_electrode_actual", default: 0
    t.integer "a_pace_min", default: 2
    t.integer "a_pace_actual", default: 0
    t.integer "p_pace_min", default: 2
    t.integer "p_pace_actual", default: 0
    t.boolean "iv_kits", default: false
    t.boolean "peds_guide", default: false
    t.boolean "supraglottic", default: false
    t.boolean "ett_kit", default: false
    t.boolean "first_aid_kit", default: false
    t.integer "trauma_dressings_min", default: 4
    t.integer "trauma_dressings_actual", default: 0
    t.integer "four_by_four_min", default: 24
    t.integer "four_by_four_actual", default: 0
    t.integer "occlude_dressing_min", default: 4
    t.integer "occlude_dressing_actual", default: 0
    t.integer "roll_gauze_min", default: 12
    t.integer "roll_gauze_actual", default: 0
    t.integer "cravats_min", default: 10
    t.integer "cravats_actual", default: 0
    t.integer "tape_rolls_min", default: 4
    t.integer "tape_rolls_actual", default: 0
    t.boolean "scissors", default: false
    t.integer "emisis_basin_min", default: 2
    t.integer "emisis_basin_actual", default: 0
    t.boolean "saline", default: false
    t.integer "oral_glucose_min", default: 2
    t.integer "oral_glucose_actual", default: 0
    t.integer "alc_prep_min", default: 12
    t.integer "alc_prep_actual", default: 0
    t.integer "sterile_gloves_min", default: 2
    t.integer "sterile_gloves_actual", default: 0
    t.boolean "scalpel", default: false
    t.integer "umb_ties_min", default: 4
    t.integer "umb_ties_actual", default: 0
    t.boolean "sanitary_pads", default: false
    t.integer "disp_towels_min", default: 2
    t.integer "disp_towels_actual", default: 0
    t.boolean "bulb_syringe", default: false
    t.integer "collar_adult_min", default: 3
    t.integer "collar_adult_actual", default: 0
    t.integer "collar_peds_min", default: 3
    t.integer "collar_peds_actual", default: 0
    t.boolean "traction_adult", default: false
    t.boolean "traction_peds", default: false
    t.integer "splint_upper_min", default: 2
    t.integer "splint_upper_actual", default: 0
    t.integer "splint_lower_min", default: 2
    t.integer "splint_lower_actual", default: 0
    t.integer "backboard_min", default: 2
    t.integer "backboard_actual", default: 0
    t.boolean "short_spine", default: false
    t.boolean "peds_immobile", default: false
    t.boolean "c_spine", default: false
    t.boolean "handwash", default: false
    t.integer "exam_gloves_min", default: 10
    t.integer "exam_gloves_actual", default: 0
    t.integer "gowns_min", default: 4
    t.integer "gowns_actual", default: 0
    t.integer "shield_min", default: 4
    t.integer "shield_actual", default: 0
    t.integer "wastebag_min", default: 4
    t.integer "wastebag_actual", default: 0
    t.boolean "drug_lock", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.datetime "date"
    t.text "content"
    t.string "shift"
    t.integer "user_id"
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
