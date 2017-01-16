# This code is for a sustraction operation

puts "Hi! what number do you want to rest?"
STDOUT.flush
number_to_rest = gets.chomp
number_to_rest = number_to_rest.delete(',').to_i


puts "How many nombers do you want to sustract from them?"
STDOUT.flush
numbers_of_sustraction = gets.chomp
numbers_of_sustraction = numbers_of_sustraction.delete(',').to_i

total = number_to_rest - numbers_of_sustraction

puts total
