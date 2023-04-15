class ItemChecklistsController < ApplicationController
  def index
    item_checklists = ItemChecklist.all
    render json: item_checklists.as_json
  end

  def show
    item_checklist = ItemChecklist.find_by(id: params["id"])
    render json: item_checklist.as_json
  end

  def create
    item_checklist = ItemChecklist.new()
    if item_checklist.save
      render json: { message: "Item Checklist Created" }
    else
      render json: { error: item_checklist.errors.full_messages }
    end
  end

  def update
    item_checklist = ItemChecklist.find_by(id: params["id"])
    arr = [
      "extinguisher_min",
      "extinguisher_actual",
      "towels_min",
      "towels_actual",
      "adult_cannula_min",
      "adult_cannula_actual",
      "stethoscope_adult_min",
      "stethoscope_adult_actual",
      "triage_tags_min", 
      "triage_tags_actual",
      "trauma_dressings_min",
      "trauma_dressings_actual",
      "roll_gauze_min", 
      "roll_gauze_actual",
      "oral_glucose_min",
      "oral_glucose_actual",
      "splint_upper_min",
      "splint_upper_actual",
      "exam_gloves_min", 
      "exam_gloves_actual",
      "shield_min",
      "shield_actual"
    ]
    arr.each do |item|
      item_checklist[item] = params[item] || item_checklist[item]
    end

    if item_checklist.save
      render json: { message: "Item Checklist Updated" }
    else
      render json: { message: item_checklist.errors.full_messages }
    end
  end

  def destroy
    item_checklist = ItemChecklist.find_by(id: params["id"])
    item_checklist.destroy
    
    render json: {message: "Item Checklist Deleted"}
  end
end
