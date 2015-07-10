require './voter'

class Candidate < Voter
  attr_accessor :party, :name, :vote
  def initialize(name, party)
    @name = name
    @party = party
    @vote = true
  end

  # outputs a bool value for chances a voter will vote for a particular candidate
  def stump_speech(voter)
    stats(voter)
  end

  private

  # determines voter preference
  def stats(voter)
    case @party
    when "Republican"
      if voter.politics.include?("Libertarian")
        if rand > 0.1
          true
        else
          false
        end
      elsif voter.politics.include?("Conservative")
        if rand > 0.25
          true
        else
          false
        end
      elsif voter.politics.include?("Independent")
        if rand > 0.50
          true
        else
          false
        end
      elsif voter.politics.include?("Progressive")
        if rand > 0.75
          true
        else
          false
        end
      else
        if rand > 0.90
          true
        else
          false
        end
      end
    when "Democrat"
      if voter.politics.include?("Libertarian")
        if rand < 0.1
          true
        else
          false
        end
      elsif voter.politics.include?("Conservative")
        if rand < 0.25
          true
        else
          false
        end
      elsif voter.politics.include?("Independent")
        if rand < 0.50
          true
        else
          false
        end
      elsif voter.politics.include?("Progressive")
        if rand < 0.75
          true
        else
          false
        end
      else
        if rand < 0.90
          true
        else
          false
        end
      end
    end
  end
end
