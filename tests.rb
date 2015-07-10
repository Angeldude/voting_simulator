require './campaign'
require './create'

def test_campaign
  candidates = [
    Candidate.new("Harold Far", "Republican"),
    Candidate.new("Fara Horde", "Democrat"),
    Candidate.new("Billy", "Republican"),
    Candidate.new("Frar", "Republican"),
    Candidate.new("Cara", "Democrat"),
    Candidate.new("Lourdes", "Democrat")
  ]

  voters= [
    Voter.new("Jona", "Massachusetts Progressive"),
    Voter.new("Sally", "Progressive"),
    Voter.new("Billy", "Progressive"),
    Voter.new("Frar", "Progressive"),
    Voter.new("Cara", "Libertarian"),
    Voter.new("Lourdes", "Massachusetts Democrat")
  ]

  campaign = Campaign.new(candidates, voters)

  candidates.each do |candi|
    voters.each do |voter|
      if campaign.stump_speech(candi, voter) and not voter.convinced?
        voter.convinced = true
      elsif voter.convinced?
        "I already voted"
      end
    end
    p [candi.name, candi.counter]
  end


  # voters.each do |item|
  #   p item.convinced?
  #   p item.comment(item)
  #   candidates.each do |candidate|
  #     p  candidate.stump_speech(item)
  #   end
  # end


  # campaign.vote_sim
  # p campaign.outcome
end

test_campaign
