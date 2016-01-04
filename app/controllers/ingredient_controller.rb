class IngredientController < ApplicationController

  def index
    @ingredient = Ingredient.all
    @quantity = Quantity.all
  end

end