
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
    
    input = gets.strip.downcase
    comp = ArsenalfcResults::Competition.find_by_name(input)
    binding.pry
    
    puts "Here are the results from the #{comp.name}"
    
    # if input == "1"
    #   puts "Here are the results from the Premier League"
    #     ArsenalfcResults::Competition.all_comps.each do |f|
    #       if f.name == "Premier League"
    #         f.fixtures.each do |k|
    #           puts "#{k.date} - #{k.teams} - #{k.score}"
    #         end
    #       end
    #     end
    #   next_step
      
      
    # elsif input =="2"
    #   puts "Here are the results from the Football League Trophy"
    #     ArsenalfcResults::Competition.all_comps.each do |f|
    #       if f.name == "Football League Trophy"
    #         f.fixtures.each do |k|
    #           puts "#{k.date} - #{k.teams} - #{k.score} "
    #         end
    #       end
    #     end
    #   next_step
      
    # elsif input == "3"
    #   puts "Here are the results from the Europa League"
    #     ArsenalfcResults::Competition.all_comps.each do |f|
    #       if f.name == "UEFA Europa League"
    #         f.fixtures.each do |k|
    #           puts "#{k.date} - #{k.teams} - #{k.score} "
    #         end
    #       end
    #     end
    #   next_step
      
    # elsif input == "4"
    #   puts "Here are the results from the League Cup"
    #     ArsenalfcResults::Competition.all_comps.each do |f|
    #       if f.name == "League Cup"
    #         f.fixtures.each do |k|
    #           puts "#{k.date} - #{k.teams} - #{k.score} "
    #         end
    #       end
    #     end
    #   next_step
      
    # elsif input == "5"
    #   puts "Here are the results from the FA Cup"
    #     ArsenalfcResults::Competition.all_comps.each do |f|
    #       if f.name == "FA Cup"
    #         f.fixtures.each do |k|
    #           puts "#{k.date} - #{k.teams} - #{k.score} "
    #         end
    #       end
    #     end
    #   next_step
      
    # elsif input == "exit"
    #   puts "Thanks for Visiting!  COYG!!!"
    # else
    #   menu
    # end
  end
  
  
  def next_step
    puts "Why you like to see more results? Enter Y or N"
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