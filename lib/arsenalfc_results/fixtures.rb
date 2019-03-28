
class ArsenalfcResults::Fixture
  
  attr_accessor :season, :competition, :date, :teams, :score
  
  @@all = []
  
  def initialize(date, teams, score, comp_name)
    @date = date
    @teams = teams
    @score = score
    set_competition(comp_name)
    @@all << self
  end
  
  
  def set_competition(comp_name)
    @competition = ArsenalfcResults::Competition.find_by_name(comp_name)
    @competition.fixtures << self
  end
  
  def self.all
    @@all
  end
  
end
