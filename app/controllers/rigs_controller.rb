class RigsController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    @rigs = Rig.all
    # render json: @rigs.as_json
    render template: "rigs/index"
  end

  def show
    rig = Rig.find_by(id: params["id"])
    render json: rig.as_json
  end

  def create
    rig = Rig.new(
      name: params["name"],
    )
    if rig.save
      render json: { message: "rig was created" }
    else
      render json: { error: rig.errors.full_messages }
    end
  end

  def destroy
    rig = Rig.find_by(id: params["id"])
    rig.destroy

    render json: { message: "rig was sent to the scrapyard" }
  end
end
