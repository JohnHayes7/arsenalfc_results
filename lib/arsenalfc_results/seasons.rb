require_relative "./fixtures"
require "nokogiri"
require "open-uri"
require "pry"


class ArsenalfcResults::Seasons
  attr_accessor :season, :competition
  
  @@all_seasons = []
  @season_19 = "https://www.11v11.com/teams/arsenal/tab/matches/season/2019/"
  @season_18 = "https://www.11v11.com/teams/arsenal/tab/matches/season/2018/"
  
  @@season_array = [@season_19, @season_18]
  
  def initialize(season)
    @season = season
  end
  
  def self.season_scraper
    @@season_array.each do |s|
      site = s
      page = Nokogiri::HTML(open(site))
      season = page.css("h2.seasonTitle").text.split(" ")[0]
      self.new(season)
      @@all_seasons << season
      
    end
  end
  
  self.season_scraper
  
  def initialize(season)
    @season = season
    # binding.pry
  end
  
  def self.seasons
    @@all_seasons
  end
  
  @@comp_array = []
  
  def self.competition_scraper
    site = "https://www.11v11.com/teams/arsenal/tab/matches/"
    page = Nokogiri::HTML(open(site))
     @@comp_array << page.css("table.width580 tr td")[4].text
  end
  
  
  
end