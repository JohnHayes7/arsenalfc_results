require "pry"

class ArsenalfcResults::Results 
  def greeting
    puts "Greetings! Welcome to Arsenal FC Results"
    puts "Please select a season:"
    Seasons.season_scraper
    # binding.pry
  end
  
  
end