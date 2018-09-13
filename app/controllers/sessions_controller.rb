class SessionsController < ApplicationController

  def new # <-- LOGIN FORM
    @user = User.new
    render :new
  end

  def create # <-- NEW SESSION
    email = params[:user][:email]
    password = params[:user][:password]
    @user = User.find_by_credentials(email, password)
    # debugger
    if @user
      login!(@user)
      redirect_to user_url(@user)
    else
      flash.now[:errors] = ["Invalid credentials"]
      render :new
    end
  end

  def destroy # <-- CLOSE SESSION
    if logged_in?
      logout!
      render :new
    else
      flash.now[:errors] = "Logout error"
    end
  end

end