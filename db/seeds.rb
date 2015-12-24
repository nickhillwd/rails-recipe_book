# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

# Catagory.delete_all

#  Catagory.create!(catagory_name: 'Starters')
#  Catagory.create!(catagory_name: 'Mains')
#  Catagory.create!(catagory_name: 'Puddings')
#  Catagory.create!(catagory_name: 'Snacks & Drinks')

Recipe.delete_all

 Recipe.create!(recipe_name: 'Soup', method: 'cook it all and blend the hell outa it', ingredients: 'Vegetables, water, stock cube', picture: 'http://weknowyourdreams.com/images/soup/soup-02.jpg', catagory_id: 25, user_id: 24)
 Recipe.create!(recipe_name: 'Meat and Potato Pie', method: 'cook the meat in the slow cooker and chuck some pastry on top like you would throw a frisbie', cooking_temp: 180, ingredients: 'beef meat, gravy, potatoes, pastry', catagory_id: 26, user_id: 25)
  Recipe.create!(recipe_name: 'Chocolate Cake', method: 'mix it all up and bake it', cooking_temp: 180, ingredients: 'Flour, Chocolate, eggs, cocoa powder, sugar', picture: 'http://weknowyourdreams.com/images/cake/cake-02.jpg', catagory_id: 27, user_id: 26)
  Recipe.create!(recipe_name: 'Bread', method: 'mix it all up and bake it', cooking_temp: 200, ingredients: 'Flour, Yeast, water, salt, sugar', catagory_id: 28, user_id: 26)
  Recipe.create!(recipe_name: 'Pasta', method: 'mix the ingredients and roll through the mangle, then boil', ingredients:'Flour, egg yolk, water', catagory_id: 26, user_id: 25)
  Recipe.create!(recipe_name: 'Ginger Bread Men', method: 'mix all the ingredients and lie on top if the rolled out mix and get someone to cut around you in the shape of a man', cooking_temp: 180, ingredients: 'Flour, Ginger, Eggs, A person, Sugar', catagory_id: 27, user_id: 26)
  Recipe.create!(recipe_name: 'Pierogi', method: 'Boil some potatoes, mash them up! Mix cheese and fold into pastry', ingredients: 'Flour, Cheese, Water, Potatoes, Onions', catagory_id: 25 , user_id: 25)
  Recipe.create!(recipe_name: 'Buffalo Chicken Wings', method: 'Pull out all the left over feathers from the wings, bake in the sauce', cooking_temp: 160, ingredients: 'Chicken Wings, Franks Hot Sauce, Honey, Celery Salt, Vinegar', catagory_id: 26, user_id: 25)
  Recipe.create!(recipe_name: 'Fish and Chips', method: 'Fry the big fish in the batter', ingredients: 'Haddock, Chips, Batter, Mushy Peas', catagory_id: 26, user_id: 24)
  Recipe.create!(recipe_name: 'Death By Chocolate', method: 'Recieve a giant dairy milk bar for christmas. Hit the appointed \'Death by Chocolate\' Person over the head with the chocolate bar', ingredients: 'Chocolate', catagory_id: 27, user_id: 26)
  Recipe.create!(recipe_name: 'Chicken Fajitas', method: 'cook the chicken and peppers in the fajita mix. Roll in round breads', ingredients: 'Chicken, Fajita Mix, Tortillias', catagory_id: 26, user_id: 24)
  Recipe.create!(recipe_name: 'Beans on Toast', method: 'Put the hot beans on a slice of toast and add a dash of lea & perrins', ingredients: 'Toast, Beans, Lea & Perrins', catagory_id: 26, user_id: 26)

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

# User.delete_all

#   User.create!(user_name: 'Nick', user_email: 'nick@example.com', password: 'Password1', password_confirmation: 'Password1', recipe_id: 21)
#   User.create!(user_name: 'Justyna', user_email: 'justyna@exapmle.com', password: 'Password1', password_confirmation: 'Password1', recipe_id: 22)
#   User.create!(user_name: 'David', user_email: 'david@example.com', password: 'Password1', password_confirmation: 'Password1', recipe_id: 23)

#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
