
class ArsenalfcResults::CLI
  
  def greeting
    puts "Welcome to Arsenal FC Results"
    ArsenalfcResults::Scraper.competition_scraper
    ArsenalfcResults::Scraper.fixture_scraper
    menu
  end
  
  def menu
    puts "Please select a competition or type 'exit'"
    ArsenalfcResults::Competition.all.each_with_index do |c, i|
        puts "#{i+1}. #{c.name}"
    end
    comp_display
  end
  
  def comp_display
    input = gets.strip.downcase
    if input.to_i.between?(1, 5)
      comp = ArsenalfcResults::Competition.find_by_index(input)
      puts "Here are the results from the #{comp.name}"
        comp.fixtures.each do |f|
        puts "#{f.date} - #{f.teams} - #{f.score}"
        end
      next_step
    elsif input == "exit"
      puts "Thanks for visiting!!  COYG!!!"
    else
      puts "Please make a valid selection"
      menu
    end
  end
  
  def next_step
    puts "Would you like to see more results? Enter Y or N"
    input = gets.strip.downcase
    if input == "y"
      menu
    elsif input == "n"
      puts "Thanks for Visiting! COYG!!!!"
    else
      next_step
    end
  end
  
end
