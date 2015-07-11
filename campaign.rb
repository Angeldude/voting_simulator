class Campaign

  def initialize(candidates, voters)
    @candidates = candidates
    @voters = voters
    @outcome = []
  end

  def stump_platform
    puts "Let the speeches begin!"
    stumper = @candidates.delete(@candidates.sample)
    everyone_else = @candidates + @voters

    everyone_else.each do |voter|
      voter.listen(stumper)
    end
    @outcome.push(stumper)
  end

  def outcome
    puts "The votes are in!"
    @outcome.each do |candidate|
      p "#{candidate.name} has #{candidate.vote_counter}"
    end
  end
end
