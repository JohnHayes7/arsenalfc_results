require "nokogiri"
require "open-uri"
require "pry"


class Seasons
  attr_accessor :years, :competitions
  
  @@all = []
  
  def self.season_scraper
    site = "http://www.espn.com/soccer/team/results/_/id/359/arsenal"
    page = Nokogiri::HTML(open(site))
    
    page.css("select.dropdown__select option").each do |s|
      s.text
      binding.pry
    end
  end
  
  
end