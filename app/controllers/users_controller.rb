class UsersController < ApplicationController
  def index
    users = User.all
    render json: users.as_json
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
      rig_id: params["rig_id"],
    )
    if user.save
      render json: { message: "user created" }
    else
      render json: { errors: user.errors.full_messages }
    end
  end

  def update
    user = User.find_by(id: params["id"])

    user.first_name = params["first_name"] || user.first_name
    user.last_name = params["last_name"] || user.last_name
    user.email = params["email"] || user.email
    user.password = params["password"] || user.password
    user.password_confirmation = params["password_confirmation"] || user.password_confirmation
    user.rig_id = params["rig_id"] || user.rig_id

    if user.save
      render json: { message: "user info updated" }
    else
      render json: { error: user.errors.full_messages }
    end
  end

  def destroy
    user = User.find_by(id: params["id"])
    user.destroy
    render json: { message: "user was deleted" }
  end
end
