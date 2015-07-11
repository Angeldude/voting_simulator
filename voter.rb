class Voter
  @@next_id = 0
  attr_accessor :name, :politics, :party
  attr_reader :voted, :id

  def initialize(name, politics)
    @name = name
    @politics = politics
    @voted = false
    @id = @@next_id
    @@next_id += 1
  end

  def listen(candidate) #campaign class will use this
    if not @voted
      if candidate.stump_speech(self)
        puts "#{name}: I am convinced, #{candidate.name} gets my vote!"
        puts
        candidate.vote_counter += 1
        @voted =true
      else
        puts "#{name}: Don't think so, I'll go on to the next."
        puts
      end
    end
  end
end
