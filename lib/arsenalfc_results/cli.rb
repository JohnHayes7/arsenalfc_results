
class ArsenalfcResults::CLI 
  def greeting
    puts "Welcome to Arsenal FC Results"
    ArsenalfcResults::Scraper.fixture_scraper
    menu
  end
  
  def menu
    puts "Please select a competition:"
    ArsenalfcResults::Competition.comp_names.each_with_index do |c, i|
      puts "#{i+1}. #{c}"
    end
    
    input = gets.strip.downcase
    
    if input == "1"
      puts "Here are the results from the Premier League"
      ArsenalfcResults::Competition.all_comps
      
    elsif input =="2"
      puts "Here are the results from the Football League Trophy"
      
    elsif input == "3"
      puts "Here are the results from the Europa League"
      
    elsif input == "4"
      puts "Here are the results from the League Cup"
    
    elsif input == "5"
      puts "Here are the results from the FA Cup"
    
    else 
      menu
    end
  end
  
  def competitions
    
  end
end