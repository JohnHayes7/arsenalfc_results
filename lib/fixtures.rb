require_relative "./arsenalfc_results"
require "nokogiri"
require "open-uri"
require "pry"

class ArsenalfcResults::Fixtures
  attr_accessor :season, :competition, :date, :teams, :score
  
    
    
  def initialize(date, teams, score, comp_name)
    @date = date
    @teams = teams
    @score = score 
    ArsenalfcResults::Competition.new(comp_name)
  end
  
  def self.scraper
    date_array = []
    teams_array = []
    score_array = []
    comp_array = []
    site = "https://www.11v11.com/teams/arsenal/tab/matches/"
    page = Nokogiri::HTML(open(site))
    
    #DATE
    drop_zero = page.css("table.width580 tr td")
    date = drop_zero.each_with_index.select{|x, i| i % 5 == 0}
    date.each do |d|
    date_array << d.first.text
    end
    
    #TEAMS
    drop_one = page.css("table.width580 tr td").drop(1)
    teams = drop_one.each_with_index.select{|x, i| i % 5 == 0}
    teams.each do |t|
     teams_array << t.first.text
    end
   
    #SCORE
    drop_three = page.css("table.width580 tr td").drop(3)
    score = drop_three.each_with_index.select{|x, i| i % 5 == 0}
    score.each do |s|
    score_array << s.first.text.strip
    end
    
    #COMPETITION 
    drop_four = page.css("table.width580 tr td").drop(4)
    comp = drop_four.each_with_index.select{|x, i| i % 5 == 0}
    comp.each do |c|
    comp_array << c.first.text.strip
    
    end
    
    #COMBINES DATA INTO ONE ARRAY FOR INSTANTIATION
     fixtures = date_array.zip(teams_array, score_array, comp_array)
    
     fixtures.each do |f|
        self.new("#{f[0]}", "#{f[1]}", "#{f[2]}", "#{f[3]}")
        binding.pry
    end
  end
  
  def fixtures
    @fixtures
  end
  
  
  
  
end
