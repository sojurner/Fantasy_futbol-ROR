class Api::V1::UsersController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:create, :update, :destroy]
  before_action :set_user, only: [:destroy, :show, :edit, :update]

  def index 
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      full_name: params["full_name"],
      user_name: params["user_name"],
      email: params["email"],
      password: params["password"]
    )
    if @user.save
      render json: @user
    else
      render json: {msg: 'Unable to create user entry'}, status: 400
    end
  end

  def destroy
    @user.destroy
    render json: {msg: "User has been removed"}
  end
  
  def show 
  end
  
  def update
    if @user.update(user_params)
      render json: {msg: "Account has been Updated"}
    else
      render json: {msg: "Accout Could not be updated"}
    end
  end
  
  private
  
  def set_user 
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:full_name, :user_name, :email, :password_digest)
  end
end