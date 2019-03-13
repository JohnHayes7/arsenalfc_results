require_relative "./arsenalfc_results"

class ArsenalfcResults::Competition
  
  attr_accessor :name, :fixture, :date, :score, :season
  
  @@all_comps = []
  
  @season_19 = "https://www.11v11.com/teams/arsenal/tab/matches/season/2019/"
  @season_18 = "https://www.11v11.com/teams/arsenal/tab/matches/season/2018/"
  @@season_array = [@season_19, @season_18]
  
  def initialize(comp_name, date, teams, score)
    @fixture ={}
    @name = comp_name
    if !@@all_comps.include?(self)
      @@all_comps << self
    end
    @fixture[:date] = date
    @fixture[:teams] = teams
    @fixture[:score] = score
    season_scraper
    @fixture[:season] = @season
    binding.pry
  end
  
  def season_scraper
    @@season_array.each do |s|
      site = s
      page = Nokogiri::HTML(open(site))
      years = page.css("h2.seasonTitle").text.split(" ")[0]
      @season = ArsenalfcResults::Seasons.new(years)
    end
  end
  
  
  def add_seasons(season)
    @seasons << season
    if !season.competitions.include?(self)
      season.add_competition(self)
    end
  end
  
  def self.all_comps
    @@all_comps
  end
  
  
    
  
  
end