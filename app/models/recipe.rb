class Recipe < ActiveRecord::Base

  def self.search(search)
    where("recipe_name LIKE ?", "%#{search}%")
  end

  belongs_to :catagory
end
