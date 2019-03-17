
class ArsenalfcResults::Competition
  
  attr_accessor :name, :fixture, :date, :score, :season
  
  @@all_comps = []
  @@comp_names =[]
  
  def initialize(comp_name, date, teams, score)
    @fixture ={}
    @season = ArsenalfcResults::Scraper.season_scraper
    binding.pry
    @name = comp_name
    if !@@comp_names.include?(self.name)
      @@comp_names << self.name
    end
    if !@@all_comps.include?(self)
      @@all_comps << self
    end
    @fixture[:date] = date
    @fixture[:teams] = teams
    @fixture[:score] = score
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