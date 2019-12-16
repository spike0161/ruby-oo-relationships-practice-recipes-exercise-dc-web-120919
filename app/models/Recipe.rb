require 'pry'

class Recipe

  @@all = []

  attr_accessor :name

        def initialize(name)
          @name = name
          @@all << self
        end

        def self.all
          @@all
        end

        def self.most_popular
          #returns recipe with the most RecipeCards (most popular)
        end

        def my_recipes
          # helper to return the recipes associated with the user
          owner_recipe = RecipeCard.all.select do |card|
            card.recipe_name == self
          end
        end

        def users
          #maps to find the recipe of the user
          my_recipes.map do |recipe|
            recipe.user
          end
        end

        def ingredients
          # returns all the ingredients for this particular recipe
          
        end

        def allergens
          # returns all ingredients (Ingredients class) in this recipe that are allergens for Users(class) in our system
        end

        def add_ingredients
          # takes an array of ingredient instances as argument, associates these ingredients with the recipe
        end

end
