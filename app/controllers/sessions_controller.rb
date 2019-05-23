class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:sessions][:username])
    if user && user.authenticate(params[:sessions][:password])
      session[:user_id] = user.id
      flash[:success] = "Login successful"
      redirect_to root_path
    else
      flash.now[:error] = "wrong username or password"
      render "new"
    end
    # byebug
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "Log out successful"
    redirect_to login_path
  end
end