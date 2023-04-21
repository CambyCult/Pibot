class ItemsController < ApplicationController
  def index
    items = Item.all
    render json: items.as_json
  end

  def show
    item = Item.find_by(id: params["id"])
    render json: item.as_json
  end

  def create
    item = Item.new(
      name: params["name"],
      minimum: params["minimum"],
    )
    if item.save
      render json: { message: "item created" }
    else
      render json: { error: item.errors.full_messages }
    end
  end

  def update
    item = Item.find_by(id: params["id"])
    item.name = params["name"] || item.name
    item.minimum = params["minimum"] || item.minimum

    if item.save
      render json: { message: "item updated" }
    else
      render json: { error: item.errors.full_messages }
    end
  end

  def destroy
    item = Item.find_by(id: params["id"])
    item.destroy

    render json: { message: "item deleted" }
  end
end
