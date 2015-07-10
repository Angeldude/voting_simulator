require './voter'

class Candidate < Voter
  attr_accessor :party, :name, :convinced
  def initialize(name, party)
    @name = name
    @party = party
    @convinced = true
  end
end
