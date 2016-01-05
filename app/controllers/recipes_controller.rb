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
    @quantity = Quantity.where(recipe_id: params[:id])
    #debugger
  end

  def new
    @recipe = Recipe.new
    @catagories = Catagory.all
    @user = user
  end

  def create
    @user = user
    Recipe.create(recipe_params)
    redirect_to(user_path(@user.id))
  end

  def destroy
    @user = user
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to(user_path(@user.id))
  end

  def edit
    @user = user
    @recipe = Recipe.find(params[:id])
    @catagories = Catagory.all
  end

  def update
    @user = user
    recipe = Recipe.find(params[:id])
    recipe.update(recipe_params)
    if recipe.picture == ""
      recipe.update({picture: nil})
    end
    redirect_to(user_path(@user.id))
  end

    private

      def user
        User.find_by(id: session[:user_id])
      end

      def recipe_params
        params.require(:recipe).permit(:recipe_name, :method, :cooking_temp, :ingredients, :picture, :catagory_id, :user_id)
      end

end