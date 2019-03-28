
class ArsenalfcResults::Competition
  
  attr_accessor :name, :fixtures, :fixture
  
  @@all_comps = []
  
  def initialize(comp_name)
   @fixtures = []
    @name = comp_name
    @@all_comps << self
  end
  
  def season
    @season
  end
  
  def self.all
    @@all_comps
  end 
  
  def self.find_by_index(input)
    i = input.to_i - 1 
    self.all[i]
  end
  
  def self.find_by_name(comp_name)
    all.detect{|c| c.name == comp_name}
  end
  
end