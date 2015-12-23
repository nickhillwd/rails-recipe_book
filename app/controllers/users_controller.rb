class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    #debugger
    
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    else
      render 'new'
    end
    redirect_to user_path(@user)
  end

  private

    def user_params
      params.require(:user).permit(:user_name, :user_email, :password, :password_confirmation)
    end

end
