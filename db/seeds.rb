# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Catagory.delete_all

#  Catagory.create!(catagory_name: 'Starters')
#  Catagory.create!(catagory_name: 'Mains')
#  Catagory.create!(catagory_name: 'Puddings')
#  Catagory.create!(catagory_name: 'Snacks & Drinks')

# Recipe.delete_all

 # Recipe.create!(recipe_name: 'Soup', method: 'cook it all and blen the hell outa it', ingredients: 'Vegetables, water, stock cube', picture: 'http://weknowyourdreams.com/images/soup/soup-02.jpg', catagory_id: 25)
 # Recipe.create!(recipe_name: 'Meat and Potato Pie', method: 'cook the meat in the slow cooker and chuck some pastry on top like you would throw a frisbie', cooking_temp: 180, ingredients: 'beef meat, gravy, potatoes, pastry', catagory_id: 26)
  # Recipe.create!(recipe_name: 'Chocolate Cake', method: 'mix it all up and bake it', cooking_temp: 180, ingredients: 'Flour, Chocolate, eggs, cocoa powder, sugar', picture: 'http://weknowyourdreams.com/images/cake/cake-02.jpg', catagory_id: 27)
  # Recipe.create!(recipe_name: 'Bread', method: 'mix it all up and bake it', cooking_temp: 200, ingredients: 'Flour, Yeast, water, salt, sugar', picture: 'http://weknowyourdreams.com/images/bread/bread-01.jpg', catagory_id: 28)

# Ingredient.delete_all

#   Ingredient.create!(ingredient_name: 'Flour')
#   Ingredient.create!(ingredient_name: 'Chocolate')
#   Ingredient.create!(ingredient_name: 'Potato')
#   Ingredient.create!(ingredient_name: 'Pastry')
#   Ingredient.create!(ingredient_name: 'Eggs')
#   Ingredient.create!(ingredient_name: 'Cocoa powder')
#   Ingredient.create!(ingredient_name: 'Stock cube')
#   Ingredient.create!(ingredient_name: 'Gravy')
#   Ingredient.create!(ingredient_name: 'Salt')
#   Ingredient.create!(ingredient_name: 'Sugar')
#   Ingredient.create!(ingredient_name: 'Yeast')

User.delete_all

  User.create!(user_name: 'Nick', user_email: 'nick@example.com', password: 'Password1', password_confirmation: 'Password1')
  User.create!(user_name: 'Justyna', user_email: 'justyna@exapmle.com', password: 'Password1', password_confirmation: 'Password1')
  User.create!(user_name: 'David', user_email: 'david@example.com', password: 'Password1', password_confirmation: 'Password1')

#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
