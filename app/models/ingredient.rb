class Ingredient < ActiveRecord::Base
  has_many :recipe, through: :quantity
end
