
class ArsenalfcResults::Competition
  
  attr_accessor :name, :fixture, :date, :score, :season
  
  @@all_comps = []
  @@comp_names =[]
  
  def initialize(comp_name)
    # @season = ArsenalfcResults::Scraper.season_scraper
    @name = comp_name
    if !@@comp_names.include?(self.name)
      @@comp_names << self.name
    end
      @@all_comps << self
  end
  
  # def add_season(season)
  #   @seasons << season
  #   # if !season.competitions.include?(self)
  #   #   season.add_competition(self)
  #     binding.pry
  #   # end
  # end
  
  def season
    @season
  end
  
  def self.comp_names
    @@comp_names
  end
  
  
  def self.all_comps
    @@all_comps
  end
  
  
    
  
  
end