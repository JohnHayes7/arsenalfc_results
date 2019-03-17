
class ArsenalfcResults::Fixtures
  
  attr_accessor :season, :competition, :date, :teams, :score
  
  @@all_fixtures = []
  
  def initialize(date, teams, score, comp_name)
    @fixture ={}
    @fixture[:date] = date
    @fixture[:teams] = teams
    @fixture[:score] = score
    @fixture[:competition] = comp_name
    @@all_fixtures << self
  end
  
  def self.fixtures
    @@all_fixtures
  end
  
    
  
  
  
  
end
