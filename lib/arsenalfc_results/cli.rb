
class ArsenalfcResults::CLI 
  def greeting
    puts "Welcome to Arsenal FC Results"
    menu
  end
  
  def menu
    puts "Please select a competition:"
    ArsenalfcResults::Seasons.all_seasons.each_with_index do |s, i|
      puts "#{i+1}. #{s.years}"
    end
    
    input = gets.strip.downcase
    
    if input == "1"
      competitions
      
    elsif input =="2"
      competitions
    else 
      menu
    end
  end
  
  def competitions
    ArsenalfcResults::Competition.all_comps.each_with_index do |c, i|
      puts "#{i+1}. #{c.name}"
    end
  end
end