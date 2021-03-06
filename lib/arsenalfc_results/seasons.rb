
class ArsenalfcResults::Season
  attr_accessor :years, :competitions
  
  @@all_seasons = []
  
  def initialize(years)
    @years = years
    @@all_seasons << self
    @competitions = ArsenalfcResults::Competition.all_comps
  end
  
  def self.all_seasons
    @@all_seasons
  end
  
  def competitions
    @competitions
  end
end