class BooleanChecklistsController < ApplicationController
  def index
    boolean_checklists = BooleanChecklist.all
    render json: boolean_checklists.as_json
  end

  def show
    boolean_checklist = BooleanChecklist.find_by(id: params["id"])
    render json: boolean_checklist.as_json
  end

  def create
    boolean_checklist = BooleanChecklist.new(
      signed_by: params["signed_by"],
      shift: params["shift"],
      rig_id: params["rig_id"]
    )
    if boolean_checklist.save
      render json: {message: "boolean checklist created"}
    else  
      render json: { error: boolean_checklist.errors.full_messages }
    end
  end
end
