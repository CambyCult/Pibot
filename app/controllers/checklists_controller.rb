class ChecklistsController < ApplicationController
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
end
