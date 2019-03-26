
class ArsenalfcResults::Fixtures
  
  attr_accessor :season, :competition, :date, :teams, :score
  
  @@all_fixtures = []
  
  def initialize(date, teams, score, comp_name)
    @date = date
    @teams = teams
    @score = score
    add_competition
    @@all_fixtures << self
    add_to_competition(self)
  end
  
  def add_competition
    ArsenalfcResults::Competition.all_comps.each do |c|
      if @competition == c.name
         @competition = c
      end
    end
  end
  
  
  def add_to_competition(fixture)
    ArsenalfcResults::Competition.all_comps.each do |c|
      if @competition == c.name
        c.fixtures << self
      end
    end
  end
  
  def self.all_fixtures
    @@all_fixtures
  end
  
end
