require_relative "./arsenalfc_results"

class ArsenalfcResults::Competition
  
  attr_accessor :name, :fixtures
  
  
  @@all_comps =[]
  
  #NEED TO INSTANTIATE SEASONS FROM COMPETITION CLASS 
  
  def self.competition_scraper
    comp_array = []
    site = "https://www.11v11.com/teams/arsenal/tab/matches/"
    page = Nokogiri::HTML(open(site))
    drop_four = page.css("table.width580 tr td").drop(4)
    comps = drop_four.each_with_index.select{|x, i| i % 5 == 0}
    comps.each do |c|
    comp_array << c.first.text
    end
    comp_array.uniq.each do |c|
      self.new(c)
    end
  end
  
  
  def initialize(name)
    @name = name
    @@all_comps << self
    @seasons = []
  end
  
  def self.current_comps
    @current_comps
  end
  
  def seasons
    @seasons
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