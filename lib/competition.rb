require_relative "./arsenalfc_results"

class ArsenalfcResults::Competition
  
  attr_accessor :name, :fixtures
  
  
  @@all_comps =[]
  
  def initialize(name)
    @name = name
    @@all_comps << self
  end
  
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
      @comps = self.new(c)
    end
  end
  
  self.competition_scraper
  
  def self.current_comps
    @current_comps
  end
  
  
  
end