class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    catagories = Catagory.all
    @catagories_names_array = catagories.map do |catagory|
      catagory.catagory_name
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @catagories = Catagory.all
    @user = User.find_by(id: session[:user_id])
  end

  def create
    #binding.pry
    @user = User.find_by(id: session[:user_id])
    Recipe.create(recipe_params)
    redirect_to(user_path(@user.id))
  end

  def destroy
    @user = User.find_by(id: session[:user_id])
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to(user_path(@user.id))
  end

  def edit
    @user = User.find_by(id: session[:user_id])
    @recipe = Recipe.find(params[:id])
    @catagories = Catagory.all
  end

  

    private

      def recipe_params
        params.require(:recipe).permit(:recipe_name, :method, :cooking_temp, :ingredients, :picture, :catagory_id, :user_id)
      end

end