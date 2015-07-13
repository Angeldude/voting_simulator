require './voter'

class Candidate < Voter
  attr_accessor :name, :party, :vote_counter

  def initialize(name, party)
    @name = name
    @party = party
    @vote_counter = 1
  end
  def listen(candidate)
    # candidates always talk down other candidates
    bottom_spacer("Candidate #{name}: #{candidate.name} is pure trash!", 0)
  end

  def stump_speech(voter) # campaign class will call this and interlock with
    stats(voter)          # voter class
  end

  private

    # determines voter preference
    def stats(voter)
      case @party
      when "Republican"
        if voter.politics.eql?("Libertarian")
          if rand > 0.1
            true
          else
            false
          end
        elsif voter.politics.eql?("Conservative")
          if rand > 0.25
            true
          else
            false
          end
        elsif voter.politics.eql?("Independent")
          if rand > 0.50
            true
          else
            false
          end
        elsif voter.politics.eql?("Progressive")
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
        if voter.politics.eql?("Libertarian")
          if rand < 0.1
            true
          else
            false
          end
        elsif voter.politics.eql?("Conservative")
          if rand < 0.25
            true
          else
            false
          end
        elsif voter.politics.eql?("Independent")
          if rand < 0.50
            true
          else
            false
          end
        elsif voter.politics.eql?("Progressive")
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
