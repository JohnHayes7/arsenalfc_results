
class ArsenalfcResults::Fixture
  
  attr_accessor :season, :competition, :date, :teams, :score
  
  @@all = []
  
  def initialize(date, teams, score, comp_name)
    @date = date
    @teams = teams
    @score = score
    @competition = add_competition(comp_name)
    add_to_competition(self)
    @@all << self
  end
  
  def add_competition(comp_name)
    competition = nil
    ArsenalfcResults::Competition.all.each do |c|
      if comp_name == c.name
         competition = c
      end
    end
    return competition
  end
  
  
  def add_to_competition(fixture)
    ArsenalfcResults::Competition.all.each do |c|
      if @competition.name == c.name
        c.fixtures << self
      end
    end
  end
  
  def self.all
    @@all
  end
  
end
