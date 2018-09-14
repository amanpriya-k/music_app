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
      redirect_to bands_url
    else
      flash.now[:errors] = ["Invalid credentials"]
      render :new
    end
  end

  def destroy # <-- CLOSE SESSION
    if logged_in?
      logout!
      redirect_to new_session_url
    else
      flash.now[:errors] = "Logout error"
    end
  end

end
