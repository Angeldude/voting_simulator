class Voter
  attr_accessor :name, :politics, :party
  attr_reader :voted

  def initialize(name, politics)
    @name = name
    @politics = politics
    @voted = false
  end

  def listen(candidate) #campaign class will use this
    # checks if voter has voted
    if not @voted
      if candidate.stump_speech(self) #stump speech interlocks with listen method
        puts "#{name}: I am convinced, #{candidate.name} gets my vote!"
        puts
        candidate.vote_counter += 1 # adds a vote to the candidate's counter
        @voted =true # now the voter can no longer vote
      else
        puts "#{name}: Don't think so, I'll go on to the next."
        puts
      end
    else
      puts "#{name}: My mind is already made up."
      puts
    end
  end
end
