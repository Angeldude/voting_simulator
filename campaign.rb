class Campaign
  attr_reader :voters

  def initialize(candidates, voters)
    @candidates = candidates
    @notvote = []
    @voters = voters
    @outcome = []
  end

  def not_vote #sends indecisive voters into an array
    @voters.each do |voter|
      if not voter.voted
        @notvote.push(voter)
      end
    end
    @notvote
  end

  # indecisive voters now randomly pick a candidate so everyone votes.
  def finish_the_job(voters, candidates)
    if not voters.empty?
      voters.each do |voter|
        candidates.sample.vote_counter += 1
        voter.voted = true
      end
    end
  end

  # lists the total votes of all candidates
  def outcome
    5.times do
      puts "CALCULATING VOTES..."
      sleep(1)
    end
    puts "The votes are in!"
    @outcome.each do |candidate|
      puts "#{candidate.name} has #{candidate.vote_counter}"
      sleep(1)
    end
  end

  def all_stumps
    # checks if list is empty, if not runs the platform method...
    while true
      if @candidates.empty?
        puts "All done!"
        puts
        break
      else
        stump_platform
      end
    end
  end

  private

  def stump_platform
    # ...which begins the stump speeches!
    if @candidates.empty?
      puts "No more candidates left!"
    else
      puts "Let the speeches begin!"
      sleep(1)
      # removes a candidate and mixes the rest together
      stumper = @candidates.delete(@candidates.sample)
      everyone_else = (@candidates + @voters).shuffle
      puts "#{stumper.name} is speaking!"
      sleep(2)

      everyone_else.each do |voter|
        voter.listen(stumper) # every voter/candidate has a listen method...
        sleep(1)
      end
      @outcome.push(stumper)
    end
  end
end
