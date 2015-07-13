class Voter
  attr_accessor :name, :politics, :party, :voted

  def initialize(name, politics)
    @name = name
    @politics = politics
    @voted = false
  end

  def listen(candidate) #campaign class will use this
    # checks if voter has voted
    if not @voted
      if candidate.stump_speech(self) #stump speech interlocks with listen method
        bottom_spacer("#{name}: I am convinced, #{candidate.name} gets my vote!", 0)
        candidate.vote_counter += 1 # adds a vote to the candidate's counter
        @voted =true # now the voter can no longer vote
      else
        bottom_spacer("#{name}: Don't think so, I'll go on to the next.", 0)
      end
    else
      bottom_spacer("#{name}: My mind is already made up.", 0)
    end
  end
end
