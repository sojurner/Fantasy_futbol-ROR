class Api::V1::SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)  
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      render json: {msg: "Welcome #{user.full_name}", user: user}
    else
      render json: {msg: "Invalid Email and/or Password"}
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Logged out"
    redirect_to root_path
  end
end