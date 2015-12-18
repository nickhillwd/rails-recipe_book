class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    catagories = Catagory.all
    @catagories_names_array = catagories.map do |catagory|
      catagory.catagory_name
    end
  end

  def show
    @recipes = Recipe.all
  end

end