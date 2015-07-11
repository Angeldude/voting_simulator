require './candidate'

angle = Candidate.new("Ralph", "Democrat")

test_people = []
test_people.push(angle)

puts "Whose name would you like to update?"
name = gets.chomp
puts "New name?"
new_name = gets.chomp

test_people.key?
