class CatagoriesController < ApplicationController

  def show
    @catagory = Catagory.find(params[:id])

    id = params[:id]

    @recipes = Recipe.find_by_sql("SELECT * FROM recipes WHERE catagory_id = #{id} ORDER BY recipe_name desc")
  end

  def index

  end

end