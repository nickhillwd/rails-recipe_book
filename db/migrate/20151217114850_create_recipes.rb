class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :recipe_name
      t.text :method
      t.integer :cooking_temp
      t.text :ingredients
      t.text :picture

      t.timestamps null: false
    end
  end
end
