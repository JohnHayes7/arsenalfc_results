require "pry"
require_relative "./seasons"

class ArsenalfcResults::Results 
  def greeting
    puts "Welcome to Arsenal FC Results"
    menu
  end
  
  def menu
    puts "Please select a season:"
    ArsenalfcResults::Seasons.seasons.each_with_index do |s, i|
      puts "#{i+1}. #{s}"
    end
    
    input = gets.strip.downcase
    
    if input == "1"
      puts "Select a competition from the 2018/19 season:"
    elsif input =="2"
      puts "Select a competition from the 2017/18 season:"
    else 
      menu
    end
  end
  
end