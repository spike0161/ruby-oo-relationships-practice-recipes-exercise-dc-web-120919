require_relative '../config/environment.rb'



john_doe = User.new("John Doe")
skyler = User.new("Skyler")
nuts = Allergy.new("Nuts", john_doe)
salt = Ingredient.new("Salt")
sugar = Ingredient.new("Sugar")
potato = Ingredient.new("Potato")
recipe1 = Recipe.new("Fries")
recipe2 = Recipe.new("Sauce")
recipe_card1 = RecipeCard.new(john_doe, recipe1)
recipe_card2 = RecipeCard.new(skyler, recipe1)
recipe1ingredient1 = RecipeIngredient.new(potato, recipe1)
recipe1ingredient2 = RecipeIngredient.new(salt, recipe1)
recipe2ingredient1 = RecipeIngredient.new(sugar, recipe2)
puts "can generate a new recipe"
puts Recipe.all == recipe1


puts "knows the allergy name"
puts Allergy.all == nuts
puts RecipeCard.all
puts "returns recipe with matching user"
puts recipe1.users
puts "Recipe ingredients"
puts RecipeIngredient.all
# recipe1.add_ingredients(sugar)
puts "Recipe Ingredients"
puts recipe1.ingredients
print recipe1.allergens
puts recipe1.get_user
# binding.pry
