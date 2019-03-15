
class ArsenalfcResults::Seasons
  attr_accessor :years, :competitions
  
  @@all_seasons = []
  
  
  
  def initialize(years)
    @years = years
    @@all_seasons << self
    @competitions = []
  end
  
  
  
  def self.all_seasons
    @@all_seasons
  end
  
  def self.current_season
    @current_season = @@all_seasons[0]
    @current_season
  end
  
  def self.past_seasons
    @past_seasons = @@all_seasons.drop(1)
    @past_seasons
  end
  
  def competitions
    @competitions
  end
  
  def add_competition(competition)
    @competitions << competition
    if !competition.seasons.include?(self)
      competition.add_season(self)
    end
  end
  
  
  
end