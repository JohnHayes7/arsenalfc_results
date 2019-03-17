
class ArsenalfcResults::Competition
  
  attr_accessor :name, :fixture
  
  @@all_comps = []
  
  def initialize(comp_name)
   @fixtures = []
    @name = comp_name
    if !@@all_comps.include?(self)
         @@all_comps << self
    end
  end
  
  def season
    @season
  end
  
  
  def self.all_comps
    @@all_comps
  end
  
  
    
  
  
end