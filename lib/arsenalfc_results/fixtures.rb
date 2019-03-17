
class ArsenalfcResults::Fixtures
  
  attr_accessor :season, :competition, :date, :teams, :score
  
  @@all_fixtures = []
  
  def initialize(date, teams, score, comp_name)
    @date = date
    @teams = teams
    @score = score 
    @competition = ArsenalfcResults::Competition.new(comp_name, date, teams, score)
    @@all_fixtures << self
  end
  
  def self.fixtures
    @@all_fixtures
  end
  
    
  
  
  
  
end
