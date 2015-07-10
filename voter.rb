class Voter
  attr_accessor :name, :politics, :vote
  def initialize(name, politics)
    @name = name
    @politics = politics
    @vote = false
  end

  def voted?
    @vote
  end
end
