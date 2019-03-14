
class ArsenalfcResults::Fixtures
  
  attr_accessor :season, :competition, :date, :teams, :score
  
  def initialize(date, teams, score, comp_name)
    @date = date
    @teams = teams
    @score = score 
    competition = ArsenalfcResults::Competition.new(comp_name, date, teams, score)
  end
  
  
  
  def fixtures
    @fixtures
  end
  
  
  
  
end
