class AddCatagoryNameToCatagory < ActiveRecord::Migration
  def change
    add_column :catagories, :catagory_name, :string
  end
end
