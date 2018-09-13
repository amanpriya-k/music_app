class UsersController < ApplicationController

  def new
    @user = User.new
    render :new
  end

  def create # <-- SIGN UP NEW USER
    @user = User.new(user_params)
    if @user.save
      # <-- LOG THEM IN
      login!(@user)
      # <-- REDIRECT TO THEIR HOME/SHOW PAGE
      redirect_to user_url(@user)
    else
      flash.now[:errors] = ["Invalid credentials"]
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end

end
