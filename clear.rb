module Clear

  def clear_screen
    15.times do
      puts
    end
  end

  def top_spacer(text, sleeper)
    puts "#{text}"
    puts
    sleep sleeper
  end

  def bottom_spacer(text, sleeper)
    puts
    puts text
    sleep sleeper
  end


end
