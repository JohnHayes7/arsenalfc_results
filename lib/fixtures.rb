# fixture_array =[fixture_1 = {:date => "date", :competition => "competition",  :teams => "team 1 vs team 2", :score => "goals for team 1 : goals for team 2}"
require_relative "./arsenalfc_results"
require "nokogiri"
require "open-uri"
require "pry"

class ArsenalfcResults::Fixtures
  attr_accessor :season, :competition, :date, :teams, :score
  
  @fixtures_array = []
                
  def self.scraper
    @date_array = []
    @teams_array = []
    @score_array = []
    site = "https://www.11v11.com/teams/arsenal/tab/matches/"
    page = Nokogiri::HTML(open(site))
    #DATE
    drop_zero = page.css("table.width580 tr td")
    date = drop_zero.each_with_index.select{|x, i| i % 5 == 0}
    date.each do |d|
    @date_array << d.first.text
    end
    #TEAMS
    drop_one = page.css("table.width580 tr td").drop(1)
    teams = drop_one.each_with_index.select{|x, i| i % 5 == 0}
    teams.each do |d|
    @teams_array << d.first.text
    end
    #SCORE
    drop_three = page.css("table.width580 tr td").drop(3)
    score = drop_three.each_with_index.select{|x, i| i % 5 == 0}
    score.each do |s|
    @score_array << s.first.text.strip
    end
    #ITERATOR FOR HASH
    @date_array.each do |d|
      @teams_array.each do |t|
        @score_array.each do |s|
    @fixtures_array << @fixture ={:date => "#{d}", :teams => "#{t}", :score => "#{s}"}
    
    
    binding.pry
        end
      end
    end
    
  end
  
  self.scraper
  
end
