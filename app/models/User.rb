require 'pry'

class User

  attr_accessor :name
@@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end



end
