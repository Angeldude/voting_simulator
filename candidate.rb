require './voter'

class Candidate < Voter
  attr_accessor :party, :name, :convinced, :stump
  def initialize(name, party)
    @name = name
    @party = party
    @convinced = true
    @stump = false
  end

  def stump?
    @stump
  end
end
