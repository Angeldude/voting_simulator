require './campaign'
require './create'

def test_campaign
  candi = [
    Creator.new("Harold Far", "Republican"),
    Creator.new("Fara Horde", "Democrat"),
    Creator.new("Billy", "Progressive"),
    Creator.new("Frar", "Republican"),
    Creator.new("Cara", "Libertarian"),
    Creator.new("Lourdes", "Massachusetts Democrat")
  ]

  votes= [
    Creator.new("Jona", "Libertarian"),
    Creator.new("Sally", "Progressive"),
    Creator.new("Billy", "Progressive"),
    Creator.new("Frar", "Conservative"),
    Creator.new("Cara", "Libertarian"),
    Creator.new("Lourdes", "Massachusetts Democrat")
  ]

  candidates = []
  voters =[]

  candi.each do |person|
    candidates.push(person.create_person(gets.chomp.upcase))
  end

  votes.each do |person|
    voters.push(person.create_person(gets.chomp.upcase))
  end

  campaign = Campaign.new(candidates, voters)

  p campaign

  candidates.each do |candi|
    voters.each do |voter|
    p  campaign.stump_speech(candi, voter)
    end
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
