require_relative "./arsenalfc_results"
require "nokogiri"
require "open-uri"
require "pry"


class ArsenalfcResults::Seasons
  attr_accessor :years, :competitions
  
  @@all_seasons = []
  @season_19 = "https://www.11v11.com/teams/arsenal/tab/matches/season/2019/"
  @season_18 = "https://www.11v11.com/teams/arsenal/tab/matches/season/2018/"
  
  @@season_array = [@season_19, @season_18]
  
  def initialize(years)
    @years = years
    @@all_seasons << self
    # @competitions = ArsenalfcResults::Competition.current_comps
   
  end
  
  def self.season_scraper
    @@season_array.each do |s|
      site = s
      page = Nokogiri::HTML(open(site))
      years = page.css("h2.seasonTitle").text.split(" ")[0]
      self.new(years)
    end
  end
  
  self.season_scraper
  
  def self.seasons
    @@all_seasons
  end
  
  # def competitions
    
  # end
  
end