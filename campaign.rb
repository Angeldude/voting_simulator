class Campaign
  attr_reader :voters

  def initialize(candidates, voters)
    @candidates = candidates
    @notvote = []
    @voters = voters
    @outcome = []
  end

  def not_vote
    @voters.each do |voter|
      if not voter.voted
        @notvote.push(voter)
      end
    end
    @notvote
  end

  def finish_the_job(voters, candidates)
    if not voters.empty?
      voters.each do |voter|
        candidates.sample.vote_counter += 1
        voter.voted = true
      end
    end
  end

  def outcome
    5.times do
      puts "CALCULATING VOTES..."
      sleep(1)
    end
    puts "The votes are in!"
    @outcome.each do |candidate|
      p "#{candidate.name} has #{candidate.vote_counter}"
    end
  end

  def all_stumps
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
    if @candidates.empty?
      puts "No more candidates left!"
    else
      puts "Let the speeches begin!"
      sleep(1)
      stumper = @candidates.delete(@candidates.sample)
      everyone_else = (@candidates + @voters).shuffle

      everyone_else.each do |voter|
        voter.listen(stumper)
        sleep(1)
      end
      @outcome.push(stumper)
    end
  end
end
