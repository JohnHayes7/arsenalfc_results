require_relative "./arsenalfc_results"

class ArsenalfcResults::Competition
  
  attr_accessor :name, :fixture, :date, :score, :season
  
  @@all_comps = []
  
  def initialize(comp_name, date, teams, score)
    @fixture ={}
    @name = comp_name
    if !@@all_comps.include?(self)
      @@all_comps << self
    end
    @fixture[:date] = date
    @fixture[:teams] = teams
    @fixture[:score] = score
  end
  
  
  def add_seasons(season)
    @seasons << season
    if !season.competitions.include?(self)
      season.add_competition(self)
    end
  end
  
  def self.all_comps
    @@all_comps
  end
  
  
    
  
  
end