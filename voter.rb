class Voter
  attr_accessor :name, :politics, :vote
  def initialize(name, politics)
    @name = name
    @politics = politics
  end

  def voted
    @vote = false
  end
end
