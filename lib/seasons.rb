require_relative "arsenalfc_results"
require "nokogiri"
require "open-uri"
require "pry"


class ArsenalfcResults::Seasons
  attr_accessor :years, :competition
  
  @@all_seasons = []
  @season_19 = "https://www.11v11.com/teams/arsenal/tab/matches/season/2019/"
  @season_18 = "https://www.11v11.com/teams/arsenal/tab/matches/season/2018/"
  
  @@season_array = [@season_19, @season_18]
  
  def initialize(years)
    @years = years
    @@all_seasons << self
    binding.pry
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
    @@all_seaons
    
  end
  
  @@comp_array = []
  
  # def self.competition_scraper
  #   site = "https://www.11v11.com/teams/arsenal/tab/matches/"
  #   page = Nokogiri::HTML(open(site))
  #   @@comp_array << page.css("table.width580 tr td")[4].text
  # end
  # self.competition_scraper
  
  
  
end