class SessionsController < ApplicationController
  def new
   @user = User.new
  end
  def create
   user = User.find_by(name:[params[:name]])
   if user.present? && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to "/", notice: "Logged in successfully"
   else
    flash[:alert] = "Invalid username or password"
    redirect_to "/login"
  end
end

  def destroy
   session[:user_id]= nil
   redirect_to "/", notice: "User not found"
  end
end

