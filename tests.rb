require './campaign'
require './create'

def test_campaign
  candidates = [
    Candidate.new("Harold Far", "Republican"),
    Candidate.new("Fara Horde", "Democrat"),
    Candidate.new("Billy", "Progressive"),
    Candidate.new("Frar", "Republican"),
    Candidate.new("Cara", "Libertarian"),
    Candidate.new("Lourdes", "Massachusetts Democrat")
  ]

  voters= [
    Voter.new("Jona", "Libertarian"),
    Voter.new("Sally", "Progressive"),
    Voter.new("Billy", "Progressive"),
    Voter.new("Frar", "Conservative"),
    Voter.new("Cara", "Libertarian"),
    Voter.new("Lourdes", "Massachusetts Democrat")
  ]

  campaign = Campaign.new(candidates, voters)

  p campaign

  candidates.each do |candi|
    voters.each do |voter|
      campaign.stump_speech(candi, voter)
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
