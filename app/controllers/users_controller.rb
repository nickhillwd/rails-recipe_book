class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    #debugger
    
  end

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    redirect_to user_path(@user)
  end

  private

    def user_params
      params.require(:user).permit(:user_name, :user_email, :password, :password_confirmation)
    end

end
