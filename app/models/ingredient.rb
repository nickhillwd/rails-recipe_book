class Ingredient < ActiveRecord::Base
  
  has_many :recipe, through: :quantity

  def self.search(search)
    where("ingredient_name LIKE ?", "%#{search}%")
  end

end
