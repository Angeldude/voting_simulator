class Voter
  attr_accessor :name, :politics, :party
  attr_reader :voted

  def initialize(name, politics)
    @name = name
    @politics = politics
    @party=""
    @voted = false
  end

  def listen(candidate)
    if not @voted
      if candidate.stump_speech(self)
        puts "I am convinced, #{candidate.name} gets my vote!"
        candidate.vote_counter += 1
        @voted =true
      else
        puts "Don't think so, I'll go on to the next."
      end
    end
  end
end
