
class ArsenalfcResults::CLI
  
  @@comp_names = []
  
  def greeting
    puts "Welcome to Arsenal FC Results"
    ArsenalfcResults::Scraper.competition_scraper
    menu
  end
  
  def menu
    puts "Please select a competition:"
    ArsenalfcResults::Competition.all_comps.each_with_index do |c, i|
        puts "#{i+1}. #{c.name}"
    end
    
    input = gets.strip.downcase
    
    if input == "1"
      puts "Here are the results from the Premier League"
      get_fixtures
      
      
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
  
  def
  
  def competition_names
    
  end
  
  def get_fixtures
    x = ArsenalfcResults::Scraper.fixture_scraper
  end
end