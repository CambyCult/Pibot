class ManifestsController < ApplicationController
  def index
    manifest = Manifest.all
    render json: 
  end
end
