
class ArsenalfcResults::Fixtures
  
  attr_accessor :season, :competition, :date, :teams, :score, :fixture
  
  @@all_fixtures = []
  
  def initialize(date, teams, score, comp_name)
    @fixture ={}
    @fixture[:date] = date
    @fixture[:teams] = teams
    @fixture[:score] = score
    @fixture[:competition] = comp_name
    add_competition
    @@all_fixtures << self
    add_to_competition(self)
  end
  
  def add_competition
    ArsenalfcResults::Competition.all_comps.each do |c|
      if @fixture[:competition] == c.name
         @fixture[:competition] = c
      end
    end
  end
  
  
  def add_to_competition(fixture)
    ArsenalfcResults::Competition.all_comps.each do |c|
      if @fixture[:competition].name == c.name
        c.fixtures << fixture
      end
    end
  end
  
  def self.all_fixtures
    @@all_fixtures
  end
  
    
  
  
  
  
end
