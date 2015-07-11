require './candidate'
require './campaign'

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
      name = gets.chomp
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
      name = gets.chomp
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
      sleep(1)
    elsif candi
      @candidates.push(Candidate.new(name, affiliation))
    else
      @voters.push(Voter.new(name, affiliation))
    end
  end

  def update
    puts "Whose name would you like to update?"
    name = gets.chomp
    puts "New name?"
    new_name = gets.chomp
  end

  def list
    if @candidates.empty?
      puts "There are no candidates."
      puts
      sleep(3)
    else
      puts "List of candidates are:"
      @candidates.each do |candidate|
        puts "#{candidate.name}, party: #{candidate.party}"
        sleep(3)
      end
    end
    puts

    if @voters.empty?
      puts "There are no voters."
      puts
      sleep(2)
    else
      puts "List of voters are:"
      @voters.each do |voter|
        puts "#{voter.name}, affiliation: #{voter.politics}"
        sleep(3)
      end
    end
    sleep(5)
    puts
  end

  def vote
    if @candidates.empty? or @voters.empty?
      puts "No one around to vote!"
    else
      campaign = Campaign.new(@candidates, @voters)
      campaign.all_stumps
      campaign.outcome
      puts "Simulation has ended."
      sleep(2)
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
      15.times do
        puts
      end
      # user options for the simulation
      case gets.chomp.upcase
      when "DEBUG"
        @candidates = [
          Candidate.new("Harold Far", "Republican"),
          Candidate.new("Fara Horde", "Democrat"),
          Candidate.new("Billy Graham", "Democrat"),
          Candidate.new("Frar Tucke", "Republican"),
          Candidate.new("Cara Bingo", "Republican"),
          Candidate.new("Lourdes Mol", "Democrat")
        ]
        @voters = [
          Voter.new("Jona", "Libertarian"),
          Voter.new("Sally", "Progressive"),
          Voter.new("Billy", "Independent"),
          Voter.new("Sarah", "Conservative"),
          Voter.new("Gorb Gorb", "Massachusetts Democrat"),
          Voter.new("Sauron", "Libertarian")
        ]
      when "C"
        create
      when "U"
        update
      when "L"
        list
      when "V"
        vote
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
#
menu = Menu.new
menu.start_menu
