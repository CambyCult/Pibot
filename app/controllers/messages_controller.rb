class MessagesController < ApplicationController
  def index
    @messages = Message.all
    # render json: messages.as_json
    render template: "messages/index"
  end

  def show
    @message = Message.find_by(id: params["id"])
    # render json: message.as_json
    render template: "messages/show"
  end

  def create
    message = Message.new(
      date: params["date"],
      shift: params["shift"],
      content: params["content"],
      user_id: params["user_id"],
    )
    if message.save
      render json: { message: "message created" }
    else
      render json: { error: message.errors.full_messages }
    end
  end

  def update
    message = Message.find_by(id: params["id"])

    message.date = params["date"] || message.date
    message.shift = params["shift"] || message.shift
    message.content = params["content"] || message.content
    message.user_id = params["user_id"] || message.user_id

    if message.save
      render json: { message: "message succesfully updated" }
    else
      render json: { error: message.errors.full_messages }
    end
  end

  def destroy
    message = Message.find_by(id: params["id"])
    message.destroy

    render json: { message: "message deleted" }
  end
end
