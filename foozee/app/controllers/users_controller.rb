class UsersController < ApplicationController

  def create

    @valid=true
    puts "Here are the user params"
    p "Here is the user params : #{user_params}"
    @user=User.create(user_params)
    # @user.password_confirmation = params[:password]

    if @user.save
      p "Save is happenin"
      redirect_to user_path(@user)
    else
      p "Save failed!!!!"
      @valid = false
      redirect_to signup_path
    end

  end

private

  def user_params
    # p params
    params.require(:user).permit(:name, :email, :password)
  end

end
