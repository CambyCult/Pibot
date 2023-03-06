class ChecklistsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show, :update]

  def index
    checklists = Checklist.all
    render json: checklists.as_json
  end

  def show
    checklist = Checklist.find_by(id: params["id"])
    render json: checklist.as_json
  end

  def create
    checklist = Checklist.new()
    if checklist.save
      render json: { message: "checklist created" }
    else
      render json: { error: checklist.errors.full_messages }
    end
  end

  def update
    checklist = Checklist.find_by(id: params["id"])
    arr = [
      "exterior_clean",
      "interior_clean",
      "seatbelts",
      "meds_climate",
      "adjustable_wrench",
      "flat_screwdriver",
      "phillips_screwdriver",
      "center_punch",
      "cones_min",
      "cones_actual",
      "dot_erg",
      "emergency_lights",
      "grill_lights",
      "siren",
      "reflective_markings",
      "vehicle_to_base",
      "vehicle_to_vehicle",
      "flashlight",
      "extinguisher_min",
      "extinguisher_actual",
      "traffic_wear_min",
      "traffic_wear_actual",
      "sharps_container",
      "stretcher",
      "no_smoke",
      "towels_min",
      "towels_actual",
      "blankets_min",
      "blankets_actual",
      "pillows_min",
      "pillows_actual",
      "pillowcases_min",
      "pillowcases_actual",
      "sheets_min",
      "sheets_actual",
      "urinal",
      "bedpan",
      "toilet_paper",
      "aed",
      "pocket_mask_min",
      "pocket_mask_actual",
      "op_airway_min",
      "op_airway_actual",
      "np_airway_min",
      "np_airway_actual",
      "lubricant",
      "bvm",
      "bvm_mask_adult",
      "bvm_mask_peds",
      "cylinder_psi",
      "nrb_adult_min",
      "nrb_adult_actual",
      "nrb_peds_min",
      "nrb_peds_actual",
      "adult_cannula_min",
      "adult_cannula_actual",
      "peds_cannula_min",
      "peds_cannula_actual",
      "suction",
      "suction_catheters",
      "stethoscope_adult_min",
      "stethoscope_adult_actual",
      "stethoscope_peds",
      "bp_adult",
      "bp_peds",
      "vinyl_tape_min",
      "vinyl_tape_actual",
      "triage_tags_min",
      "triage_tags_actual",
      "penlight",
      "med_protocols",
      "drug_kit",
      "ecg",
      "a_ecg_electrode_min",
      "a_ecg_electrode_actual",
      "p_ecg_electrode_min",
      "p_ecg_electrode_actual",
      "a_defib_electrode_min",
      "a_defib_electrode_actual",
      "p_defib_electrode_min",
      "p_defib_electrode_actual",
      "a_pace_min",
      "a_pace_actual",
      "p_pace_min",
      "p_pace_actual",
      "iv_kits",
      "peds_guide",
      "supraglottic",
      "ett_kit",
      "first_aid_kit",
      "trauma_dressings_min",
      "trauma_dressings_actual",
      "four_by_four_min",
      "four_by_four_actual",
      "occlude_dressing_min",
      "occlude_dressing_actual",
      "roll_gauze_min",
      "roll_gauze_actual",
      "cravats_min",
      "cravats_actual",
      "tape_rolls_min",
      "tape_rolls_actual",
      "scissors",
      "emisis_basin_min",
      "emisis_basin_actual",
      "saline",
      "oral_glucose_min",
      "oral_glucose_actual",
      "alc_prep_min",
      "alc_prep_actual",
      "sterile_gloves_min",
      "sterile_gloves_actual",
      "scalpel",
      "umb_ties_min",
      "umb_ties_actual",
      "sanitary_pads",
      "disp_towels_min",
      "disp_towels_actual",
      "bulb_syringe",
      "collar_adult_min",
      "collar_adult_actual",
      "collar_peds_min",
      "collar_peds_actual",
      "traction_adult",
      "traction_peds",
      "splint_upper_min",
      "splint_upper_actual",
      "splint_lower_min",
      "splint_lower_actual",
      "backboard_min",
      "backboard_actual",
      "short_spine",
      "peds_immobile",
      "c_spine",
      "handwash",
      "exam_gloves_min",
      "exam_gloves_actual",
      "gowns_min",
      "gowns_actual",
      "shield_min",
      "shield_actual",
      "wastebag_min",
      "wastebag_actual",
      "drug_lock",
      "rig_id",
    ]
    arr.each do |item|
      checklist[item] = params[item] || checklist[item]
    end
    if checklist.save
      render json: { message: "checklist updated" }
    else
      render json: { error: checklist.errors.full_messages }
    end
  end

  def destroy
    checklist = Checklist.find_by(id: params["id"])
    checklist.destroy

    render json: { message: "checklist deleted" }
  end
end
