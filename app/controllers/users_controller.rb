class UsersController < ApplicationController
  
  def index
    @user = current_user
    @all_users = User.all
    @all_recipes = Recipe.all
  end

  def show
    @user = User.find(params[:id])

    #debugger
    
    @users_recipes = Recipe.find_by_sql("SELECT * FROM recipes WHERE user_id = #{@user.id} ORDER BY recipe_name desc")   
  end

  def edit
    @user = User.find(params[:id]) 
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to(user_path(user.id))
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Recipe App!"
      redirect_to @user
    else
      render 'new'
    end

  end

  private

    def user_params
      params.require(:user).permit(:user_name, :user_email, :password, :password_confirmation)
    end

end
