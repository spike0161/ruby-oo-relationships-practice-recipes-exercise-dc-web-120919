require 'pry'

class RecipeCard

  attr_accessor :user, :recipe_name

  @@all = []

      def initialize(user, recipe_name)
        @user = user
        @recipe_name = recipe_name
        @@all << self
      end

      def self.all
        @@all
      end

end
