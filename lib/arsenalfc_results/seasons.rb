
class ArsenalfcResults::Seasons
  attr_accessor :years, :competitions
  
  @@all_seasons = []
  
  def initialize(years)
    @years = years
    @@all_seasons << self
    @competitions = ArsenalfcResults::Competition.all_comps
    binding.pry
  end
  
  def self.all_seasons
    @@all_seasons
  end
  
  def competitions
    @competitions
  end
  
  def add_competition
    
  end
end