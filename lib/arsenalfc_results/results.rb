require "pry"
require_relative "./seasons"

class ArsenalfcResults::Results 
  def greeting
    puts "Greetings! Welcome to Arsenal FC Results"
    puts "Please select a season:"
    Seasons.years
     binding.pry
  end
  
  
end