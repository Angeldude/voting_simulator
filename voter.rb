class Voter
  attr_accessor :name, :politics, :party

  def initialize(name, politics)
    @name = name
    @politics = politics
    @party=""
  end

end
