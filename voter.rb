class Voter
  attr_accessor :name, :politics, :party

  def initialize(name, politics)
    @name = name
    @politics = politics
    @party=""
  end

  def listen(candidate)
    if candidate.stump_speech(self)
      puts "test"
    else
      puts "fail"
    end
  end

end
