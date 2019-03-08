require "pry"
require_relative "./seasons"

class ArsenalfcResults::Results 
  def greeting
    puts "Welcome to Arsenal FC Results"
    puts "Please select a season:"
    ArsenalfcResults::Seasons.seasons.each_with_index do |s, i|
      puts "#{i+1}. #{s}"
    end
  end
  
  
end