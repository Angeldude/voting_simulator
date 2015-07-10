require './candidate'
require './counter'

class Campaign

  def initialize(candidates, voters)
    @candidates = candidates
    @voters = voters
  end

  def vote_sim(counter)
    @voters.each do |item|
      temp = @candidates.sample
      bool = temp.stump_speech(item)
      if bool and temp.party.include?("Republican") and not item.voted?
        item.vote = true
        counter.inc_rep
      else
        item.vote = true
        counter.inc_dem
      end
    end
  end
end

 candidates = [
 Candidate.new("Bill Grabey", "Republican"),
Candidate.new("Laura Graham", "Democrat")
]

voters = [
  Voter.new("Amy", "Progressive"),
  Voter.new("Burt","Libertarian"),
  Voter.new("Charlie", "Independent"),
  Voter.new("Darlene", "Conservative"),
  Voter.new("Edgar", "Massachusetts Democrat"),
]
count = Counter.new
campaign = Campaign.new(candidates, voters)
campaign.vote_sim(count)

p "Democrat:"
p count.dem
p "Republican:"
p count.rep
