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
      Recipe.create(params[:recipe])
      redirect_to(recipes_path)
    end

    private

      def player_params
        params.require(:recipe).permit(:recipe_name, :method, :cooking_temp, :ingredients, :picture, :catagory_id, :user_id)
      end

end