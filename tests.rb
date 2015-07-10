require './campaign'

def test_campaign
  candidates = [
    Candidate.new("Harold Far", "Republican"),
    Candidate.new("Fara Horde", "Democrat")
  ]

  voters = [
    Voter.new("Billy", "Progressive"),
    Candidate.new("Frar", "Republican"),
    Voter.new("Cara", "Libertarian"),
    Voter.new("Lourdes", "Massachusetts Democrat")
  ]
  # campaign = Campaign.new(candidates, voters)

  # p campaign

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
