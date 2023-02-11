class UsersController < ApplicationController
  def index
    render json: { message: "okay" }
  end

  def show
    user = User.find_by(id: params["id"])
    render json: user.as_json
  end

  def create
    user = User.new(
      first_name: params["first_name"],
      last_name: params["last_name"],
      email: params["email"],
      password: params["password"],
      password_confirmation: params["password_confirmation"],
    )
    if user.save
      render json: { message: "user created" }
    else
      render json: { errors: user.errors.full_messages }
    end
  end
end
