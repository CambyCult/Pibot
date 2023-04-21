class ManifestsController < ApplicationController
  def index
    manifests = Manifest.all
    render json: manifests.as_json
  end

  def show
    manifest = Manifest.find_by(id: params["id"])
    render json: manifest.as_json
  end

  def create
    manifest = Manifest.new(
      item_id: params["item_id"],
      actual_count: params["actual_count"],
      rig_checklist_id: params["rig_checklist_id"],
    )
    if manifest.save
      render json: { message: "manifest created" }
    else
      render json: { error: manifest.errors.full_messages }
    end
  end

  def update
    manifest = Manifest.find_by(id: params["id"])
    manifest.item_id = params["item_id"] || manifest.item_id
    manifest.actual_count = params["actual_count"] || manifest.actual_count
    manifest.rig_checklist_id = params["rig_checklist_id"] || manifest.checklist_id

    if manifest.save
      render json: { message: "manifest updated" }
    else
      render json: { error: manifest.errors.full_messages }
    end
  end

  def destroy
    manifest = Manifest.find_by(id: params["id"])
    manifest.destroy

    render json: { message: "manifest deleted" }
  end
end
