
class ArsenalfcResults::Fixtures
  
  attr_accessor :season, :competition, :date, :teams, :score
  
  @@all_fixtures = []
  
  def initialize(date, teams, score, comp_name)
    @date = date
    @teams = teams
    @score = score 
    @competition = ArsenalfcResults::Competition.new(comp_name, date, teams, score)
    @@all_fixtures << self
    @season = ArsenalfcResults::Seasons.all_seasons
  end
  
  def self.fixtures
    @@all_fixtures
  end
  
  def add_season
    ArsenalfcResults::Seasons.all_seasons[0]
  end
    
  
  
  
  
end
