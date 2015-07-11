require './candidate'

angle = Candidate.new("Ralph", "Democrat")
bill = Voter.new("Bill", "Republican")
charles = Candidate.new("Charles", "Republican")
livia = Voter.new("Livia", "Progressive")

test_people = []
test_people.push(angle)
test_people.push(bill)
test_people.push(charles)
test_people.push(livia)

test_people.each do |n|
  puts n.id
end

# puts "Whose name would you like to update?"
# name = gets.chomp
# test_people.each do |person|
#   if person.name.eql?(name)
#     puts "New name?"
#   else
#     puts "Name doesn't exist."
#   end
# end
# new_name = gets.chomp

# test_people.each {|person|
#
# }
