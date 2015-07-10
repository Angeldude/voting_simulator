require './voter'

class Candidate < Voter
  attr_accessor :party, :name, :convinced, :stump, :counter
  def initialize(name, party)
    @name = name
    @party = party
    @convinced = true
    @stump = false
    @counter = 1
  end

  def stump?
    @stump
  end
end
