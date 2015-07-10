require './candidate'
class Creator
  attr_accessor :name, :politics, :affiliation
  def initialize(name, affiliation)
    @name = name
    @affiliation = affiliation
  end

  def create_person(input)
    case input
    when "P"
      Candidate.new(@name, @affiliation)
    when "V"
      Voter.new(@name, @affiliation)
    end
  end

end
