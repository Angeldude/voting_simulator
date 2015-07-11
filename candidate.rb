require './voter'

class Candidate < Voter
  @@next_id = 0
  attr_accessor :name, :party, :vote_counter
  attr_reader :id

  def initialize(name, party)
    @name = name
    @party = party
    @vote_counter = 1
    @id = @@next_id
    @@next_id += 1
  end
  def listen(candidate)
    puts "#{name}: #{candidate.name} is pure trash!"
    puts
  end

  def stump_speech(voter) # campaign class will call this and interlock with
    stats(voter)          # voter class
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
