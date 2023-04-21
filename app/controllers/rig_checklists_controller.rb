class RigChecklistsController < ApplicationController
  def index
    rig_checklists = RigChecklist.all
    render json: rig_checklists.as_json
  end

  def show
    rig_checklist = RigChecklist.find_by(id: params["id"])
    render json: rig_checklist.as_json
  end

  def create
    rig_checklist = RigChecklist.new(
      rig_id: params["rig_id"],
      signed_by: params["signed_by"],
      copy: params[false],
    )
    if rig_checklist.save
      render json: { message: "checklist created" }
    else
      render json: { error: rig_checklist.errors.full_messages }
    end
  end

  def update
    rig_checklist = RigChecklist.find_by(id: params["id"])
    rig_checklist.rig_id = params["rig_id"] || rig_checklist.rig_id
    rig_checklist.signed_by = params["signed_by"] || rig_checklist.signed_by
    rig_checklist.copy = params["copy"] || rig_checklist.copy

    if rig_checklist.save
      render json: { message: "checklist updated" }
    else
      render json: { error: rig_checklist.errors.full_messages }
    end
  end

  def destroy
    rig_checklist = RigChecklist.find_by(id: params["id"])
    rig_checklist.destroy

    render json: { message: "checklist deleted" }
  end
end
