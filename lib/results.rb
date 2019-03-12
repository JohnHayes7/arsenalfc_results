require_relative "./arsenalfc_results"
require "pry"

class ArsenalfcResults::Results 
  def greeting
    puts "Welcome to Arsenal FC Results"
    menu
  end
  
  def menu
    puts "Please select a season:"
    ArsenalfcResults::Seasons.all_seasons.each_with_index do |s, i|
      puts "#{i+1}. #{s.years}"
    end
    
    input = gets.strip.downcase
    
    if input == "1"
      puts "Select a competition from the #{ArsenalfcResults::Seasons.current_season.years} season:"
      competitions
      
    elsif input =="2"
      puts "Select a competition from the #{ArsenalfcResults::Seasons.past_seasons[0].years} season:"
      competitions
    else 
      menu
    end
  end
  
  def competitions
    ArsenalfcResults::Competition.all_comps.each_with_index do |c, i|
      puts "#{i+1}. #{c}"
    end
  end
end