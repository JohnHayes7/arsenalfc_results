require_relative "./fixtures"
require "nokogiri"
require "open-uri"
require "pry"


class Seasons
  attr_accessor :season, :competition
  
  @@all_seasons = []
  season_19 = "https://www.11v11.com/teams/arsenal/tab/matches/season/2019/"
  season_18 = "https://www.11v11.com/teams/arsenal/tab/matches/season/2018/"
  
  @@season_array = [season_19, season_18]
  
  def self.season_scraper
    @@season_array.each do |s|
      site = s
      page = Nokogiri::HTML(open(site))
      @@all_seasons << page.css("h2.seasonTitle").text.split(" ")[0]
      # binding.pry
    end
  end
  self.season_scraper
  
  def self.seasons
    @@all_seasons
  end
  
  # def self.seasons 
  #   @@season_array
  # end
  
  
end