require_relative "arsenalfc_results"

class ArsenalfcResults::Competition
  
  def competition_scraper
    site = "https://www.11v11.com/teams/arsenal/tab/matches/"
    page = Nokogiri::HTML(open(site))
    page.css("table.width580 tr td")[4]
    # binding.pry
  end
   competition_scraper
  
  # def self.all_competitions 
  #   @@comp_array
  # end
  
  def every(n)
    select{|x| index(x) % n == 0}
  end
  
  def competition
    @comp_array
  end
end