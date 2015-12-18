class AddCatagoryIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :catagory_id, :integer
  end
end
