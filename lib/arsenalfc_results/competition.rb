
class ArsenalfcResults::Competition
  
  attr_accessor :name, :fixture, :date, :score, :season
  
  @@all_comps = []
  
  def initialize(comp_name, date, teams, score)
    @fixture ={}
    @seasons = []
    @name = comp_name
    if !@@all_comps.include?(self)
      @@all_comps << self
    end
    @fixture[:date] = date
    @fixture[:teams] = teams
    @fixture[:score] = score
    season_scraper
    # @fixture[:season] = @season
  end
  
  
  
  
  def add_season(season)
    @seasons << season
    # if !season.competitions.include?(self)
    #   season.add_competition(self)
      binding.pry
    # end
  end
  
  def seasons
    @seasons
  end
  
  def self.all_comps
    @@all_comps
  end
  
  
    
  
  
end