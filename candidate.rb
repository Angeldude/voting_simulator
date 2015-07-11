require './voter'

class Candidate < Voter
  attr_accessor :name, :party, :vote_counter

  def initialize(name, party)
    @name = name
    @party = party
    @vote_counter = 1
  end
  def listen(candidate)
    puts "#{candidate.name} is pure trash!"
  end

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
