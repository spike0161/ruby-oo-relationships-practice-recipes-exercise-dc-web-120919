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



        def my_ingredients
          # takes an array of ingredient instances as argument, associates these ingredients with the recipe
          RecipeIngredient.all.select do |ingredient|
          ingredient.recipe == self
          end
        end

        # def add_ingredients
        #   # array_new = []
        #   # array_new << self.my_ingredients
        #   # array_new
        # end


        def get_recipe
          # returns all the ingredients for this particular recipe
          RecipeIngredient.all.select do |ingredient|
            ingredient.recipe == self
          end
        end

        def ingredients
          self.get_recipe.map do |recipe|
            recipe.ingredient
          end
        end

        def allergens
          # returns all ingredients (Ingredients class) in this recipe that are allergens for Users(class) in our system
        end


end
