class Voter
  attr_accessor :name, :politics, :convinced
  def initialize(name, politics)
    @name = name
    @politics = politics
    @convinced = false
  end
  def convinced?
    @convinced
  end

  # def comment(voter)
  #   if voter.class == "Candidate"
  #     puts "This candidate is pure trash!"
  #   elsif self.convinced?
  #     puts "I'm totally voting for candidate!"
  #     else
  #     puts "I'm not buying it."
  #   end
  # end
end
