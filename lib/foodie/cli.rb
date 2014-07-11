require 'foodie/generators/recipe'
require 'thor'
require 'foodie'
module Foodie
  class CLI < Thor
  
    desc "portray ITEM", "Determines if a piece of food is gross or delicious"
    def portray(name)
      puts Foodie::Food.portray(name)
    end
    
    desc "pluralize", "Pluralizes a word" 
    method_options %w(word -w) => :string, :uppercase => :boolean
    def pluralize
      if (options[:uppercase])
        puts Foodie::Food.pluralize(options[:word]).upcase
      else
        puts Foodie::Food.pluralize(options[:word])
      end
    end
      
    desc "recipe", "Generates a recipe scaffold"
    def recipe(group, name)
      Foodie::Generators::Recipe.start([group, name])
    end
    
  end
end