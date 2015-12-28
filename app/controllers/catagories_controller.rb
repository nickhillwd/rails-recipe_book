class CatagoriesController < ApplicationController

  def show
    @catagory = Catagory.find(params[:id])

    id = params[:id]

    @recipes = Recipe.find_by_sql("SELECT * FROM recipes WHERE catagory_id = #{id} ORDER BY recipe_name desc")
  end

  def index
    @recipes = Recipe.all
    if params[:search]
      @recipes = Recipe.search(params[:search]).order("recipe_name DESC")
    else
      @recipe = Recipe.all.order("recipe_name DESC")
    end
  end

end