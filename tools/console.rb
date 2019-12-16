require_relative '../config/environment.rb'



john_doe = User.new("John Doe")
skyler = User.new("Skyler")
nuts = Allergy.new("Nuts", john_doe)
salt = Ingredient.new("Salt")
potato = Ingredient.new("Potato")
recipe1 = Recipe.new("Fries")
recipe2 = Recipe.new("Sauce")
recipe_card1 = RecipeCard.new(john_doe, recipe1)
recipe_card2 = RecipeCard.new(skyler, recipe1)
recipe_ingredient1 = RecipeIngredient.new(recipe1, potato)
recipe_ingredient2 = RecipeIngredient.new(recipe1, salt)
puts "can generate a new recipe"
puts Recipe.all == recipe1


puts "knows the allergy name"
puts Allergy.all == nuts
puts RecipeCard.all
puts "returns recipe with matching user"
puts recipe1.users
# binding.pry
