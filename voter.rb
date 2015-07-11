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
      candidate.vote_counter += 1
    else
      puts "fail"
    end
  end

end
