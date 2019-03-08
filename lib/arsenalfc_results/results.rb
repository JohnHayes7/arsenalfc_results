require "pry"
require_relative "./seasons"

class ArsenalfcResults::Results 
  def greeting
    puts "Greetings! Welcome to Arsenal FC Results"
    puts "Please select a season:"
    Seasons.years.each_with_index do |s, i|
      puts "#{i+1}. #{s}"
    end
  end
  
  
end