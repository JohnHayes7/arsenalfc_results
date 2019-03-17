
class ArsenalfcResults::Competition
  
  attr_accessor :name, :fixture, :date, :score, :season
  
  @@all_comps = []
  @@prem = []
  @@europa = []
  @@fa = []
  @@league_cup = []
  @@league_trophy = []
  
  def initialize(comp_name)
    # @season = ArsenalfcResults::Scraper.season_scraper
    @name = comp_name
    if !@@all_comps.include?(self)
         @@all_comps << self
         binding.pry
    end
     self.fixture_split
  end
  
  def fixture_split
    ArsenalfcResults::Fixtures.fixtures.each do |f|
      if self.name == "Premier League"
        binding.pry
        @@prem << f
      elsif self.name == "Football League Trophy"
        @@league_trophy << f
      binding.pry
      end
    end
  end
  
  def season
    @season
  end
  
  
  def self.all_comps
    @@all_comps
  end
  
  
    
  
  
end