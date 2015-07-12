class Campaign
  attr_reader :voters, :outcome

  def initialize(candidates, voters)
    @politicians = candidates
    @notvote = Array.new
    @voters = voters
    @outcome = Array.new
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
  def show_outcome
    5.times do
      puts "CALCULATING VOTES..."
      sleep 1
    end
    puts "The votes are in!"
    @outcome.each do |candidate|
      puts "#{candidate.name} has #{candidate.vote_counter}"
      sleep 1
    end
  end

  def all_stumps
    # checks if list is empty, if not runs the platform method...
    while true
      if @politicians.empty?
        puts "No more candidates left!"
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
      puts "Let the speeches begin!"
      sleep 1
      # removes a candidate and mixes the rest together
      stumper = @politicians.delete(@politicians.sample)
      everyone_else = (@politicians + @voters).shuffle
      puts "#{stumper.name} is speaking!"
      puts
      sleep 3

      everyone_else.each do |voter|
        voter.listen(stumper) # every voter/candidate has a listen method...
        sleep 1
      end
      @outcome.push(stumper)
  end
end
