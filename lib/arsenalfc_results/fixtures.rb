
class ArsenalfcResults::Fixture
  
  attr_accessor :season, :competition, :date, :teams, :score
  
  @@all = []
  
  def initialize(date, teams, score, comp_name)
    @date = date
    @teams = teams
    @score = score
    @competition = comp_name
    add_competition
    add_to_competition(self)
    @@all << self
  end
  
  def add_competition
    ArsenalfcResults::Competition.all.each do |c|
      if @competition == c.name
         @competition = c
      end
    end
  end
  
  
  def add_to_competition(fixture)
    ArsenalfcResults::Competition.all.each do |c|
      if @competition == c.name
        c.fixtures << self
        binding.pry
      end
    end
  end
  
  def self.all
    @@all
  end
  
end
