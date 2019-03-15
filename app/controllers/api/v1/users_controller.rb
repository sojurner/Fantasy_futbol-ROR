class Api::V1::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  def index 
    @users = User.all
  end

  def create
    user = User.new(user_params)
    require 'pry'; binding.pry
    if user.save
      render json: user
    else
      render json: {error: 'Unable to create user entry'}, status: 400
    end
  end

  private
  def user_params
    params.require(:user).permit(:full_name, :user_name, :email, :password_digest)
  end

end