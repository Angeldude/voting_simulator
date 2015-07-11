class Campaign

  def initialize(candidates, voters)
    @candidates = candidates
    @voters = voters
    @outcome = []
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
