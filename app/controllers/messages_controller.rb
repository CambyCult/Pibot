class MessagesController < ApplicationController
  def index
    messages = Message.all
    render json: messages.as_json
  end

  def show
    message = Message.find_by(id: params["id"])
    render json: message.as_json
  end

  def create
    message = Message.new(
      date: params["date"],
      shift: params["first"],
      content: params["content"],
      user_id: params["user_id"],
    )
    if message.save
      render json: { message: "message created" }
    else
      render json: { error: message.errors.full_messages }
    end
  end
end
