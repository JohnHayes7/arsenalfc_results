
class ArsenalfcResults::Competition
  
  attr_accessor :name, :fixtures
  
  @@all_comps = []
  
  def initialize(comp_name)
   @fixtures = []
    @name = comp_name
    @@all_comps << self
  end
  
  def season
    @season
  end
  
  
  def self.all_comps
    @@all_comps
    binding.pry
  end
  
  
    
  
  
end