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
    msg = "CALCULATING VOTES..."
    5.times do
      print "\r#{ msg }"
      sleep 0.5
      print "\r#{ ' ' * msg.size }"
      sleep 0.5
    end
    puts "\nThe votes are in!"
    @outcome.each do |candidate|
      top_spacer("#{candidate.name} has #{candidate.vote_counter}", 1)
    end
  end

  def all_stumps
    # checks if list is empty, if not runs the platform method...
    while true
      if @politicians.empty?
        puts "No more candidates left!"
        top_spacer("All done!", 1)
        break
      else
        stump_platform
      end
    end
  end

  private

  def stump_platform
    # ...which begins the stump speeches!
      top_spacer("Let the speeches begin!", 1)
      # removes a candidate and mixes the rest together
      stumper = @politicians.delete(@politicians.sample)
      everyone_else = (@politicians + @voters).shuffle
      bottom_spacer("#{stumper.name} is speaking!", 3)

      everyone_else.each do |voter|
        voter.listen(stumper) # every voter/candidate has a listen method...
        sleep 1
      end
      @outcome.push(stumper)
  end
end
