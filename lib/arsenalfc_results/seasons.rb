require "nokogiri"
require "open-uri"
require "pry"


class Seasons
  @@all = []
  
  def season_scraper
    site = "http://www.espn.com/soccer/team/results/_/id/359/arsenal"
    page = Nokogiri::HTML(open(site))
    
    page.css("select.dropdown__select option").each do |s|
      s.text
      binding.pry
    end
  end
  
  
end