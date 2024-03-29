class SessionsController < ApplicationController
  
  
  def new
  end
  def create
    user = User.find_by_email(params[:email].downcase)
    if user && user.authenticate(params[:password]) && verify_recaptcha(model: @user)
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    elsif !verify_recaptcha
      flash.now[:alert] = "Recaptcha error"
      render "new"
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
