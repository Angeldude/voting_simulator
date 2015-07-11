require './candidate'

class Menu
  def initialize
    @candidates = [] #storing the list of candidates
    @voters = [] #storing the voters
  end
  def create
    candi = false #to determine whether to create a Candidate or Voter
    puts "What would you like to create, (C)andidate or (V)oter?"
    case gets.chomp.upcase
    when "C"
      candi = true
      puts "Name?"
      name = gets.chomp.capitalize
      puts "Party? (D)emocrat or (R)epublican"
      case gets.chomp.upcase
      when "D"
        affiliation = "Democrat"
      when "R"
        affiliation =  "Republican"
      else
        puts "Not a valid input."
        sleep(2)
      end
    when "V"
      puts "Name?"
      name = gets.chomp.capitalize
      puts "Politics? (P)rogressive, (C)onservative,"
      puts "(L)ibertarian, (M)assachusetts Democrat, or (I)ndependent"
      case gets.chomp.upcase
      when "P"
        affiliation = "Progressive"
      when "C"
        affiliation = "Conservative"
      when "L"
        affiliation = "Libertarian"
      when "M"
        affiliation = "Massachusetts Democrat"
      when "I"
        affiliation = "Independent"
      else
        puts "Not a valid input."
        puts
        sleep(2)
      end
    else
      puts "Please enter only C or V"
      puts
      sleep(2)
    end
    if name.nil? or affiliation.nil?  #make sure not to add to array
      puts "Nothing was entered."
    elsif candi
      @candidates.push(Candidate.new(name, affiliation))
    else
      @voters.push(Voter.new(name, affiliation))
    end
  end

  def start_menu
    quit_sim = true
    while quit_sim
      puts <<-END
      Welcome to the Voter Simulator! How
      would you like to proceed?

      (C)reate, (U)pdate, (L)ist, (V)ote, or (Q)uit?
      Enter only the first letter.
      END
      # user options for the simultation
      case gets.chomp.upcase
      when "C"
        create
        # p @candidates
        # p @voters
      when "U"

      when "L"

      when "V"

      when "Q"
        puts "Have a good day!"
        quit_sim = false
      else
        puts "Not a valid input."
        sleep(2)
      end
    end
  end
end

menu = Menu.new
menu.start_menu
