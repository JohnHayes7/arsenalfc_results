require_relative "arsenalfc_results"

class ArsenalfcResults::Competition
  
  attr_accessor :name
  
  def self.competition_scraper
    @comp_array = []
    site = "https://www.11v11.com/teams/arsenal/tab/matches/"
    page = Nokogiri::HTML(open(site))
    drop_four = page.css("table.width580 tr td").drop(4)
    comps = drop_four.each_with_index.select{|x, i| i % 5 == 0}
    comps.each do |c|
      c.each_with_index do |cmp, i|
        i % 2 == 0
        @comp_array << cmp
        binding.pry
      end
    end
  end
   
  self.competition_scraper
  
  # def self.all_competitions 
  #   @@comp_array
  # end
  
  # def every(n)
  #   select{|x| index(x) % n == 0}
  # end
  
  def competition
    @comp_array
  end
end