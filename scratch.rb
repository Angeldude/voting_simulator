# scratch code

private

  # determines voter preference
  def stats(candidate,voter)
    case candidate.party
    when "Republican"
      if voter.politics.include?("Libertarian")
        if rand > 0.1
        else
          false
        end
      elsif voter.politics.include?("Conservative")
        if rand > 0.25

        else
          false
        end
      elsif voter.politics.include?("Independent")
        if rand > 0.50

        else
          false
        end
      elsif voter.politics.include?("Progressive")
        if rand > 0.75

        else
          false
        end
      else
        if rand > 0.90

        else
          false
        end
      end
    when "Democrat"
      if voter.politics.include?("Libertarian")
        if rand < 0.1

        else
          false
        end
      elsif voter.politics.include?("Conservative")
        if rand < 0.25

        else
          false
        end
      elsif voter.politics.include?("Independent")
        if rand < 0.50

        else
          false
        end
      elsif voter.politics.include?("Progressive")
        if rand < 0.75

        else
          false
        end
      else
        if rand < 0.90

        else
          false
        end
      end
    end
  end
