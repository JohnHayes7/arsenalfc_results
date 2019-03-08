require_relative "./arsenalfc_results/version"
require_relative "./arsenalfc_results/results"
require_relative "./arsenalfc_results/seasons"
require "pry"

class Fixtures
  attr_accessor :date, :teams, :results, :score, :competition
end
