require './voter'

class Candidate < Voter
  attr_accessor :name, :party

  def initialize(name, party)
    @name = name
    @party = party
  end

end
