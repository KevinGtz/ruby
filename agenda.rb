# Contacts of Kevin; Ruby

puts "Welcome Mr.Kevin"
puts "Do you want to save some firend?"
STDOUT.flush
decision = gets.chomp

if decision == "yes"
  puts "Give me your friend's name:"
  STDOUT.flush
  name = gets.chomp
  puts "What is your friend's phone:"
  STDOUT.flush
  phone = gets.chomp
end

load 'person.rb'
p1 = Person.new(name, phone)
puts p1.name+' '+ p1.phone.to_s+' '

File.open('agenda', 'w+') do |f|
  Marshal.dump(p1, f)
end

load 'person.rb'
File.open('agenda') do |f|
  @p1 = Marshal.load(f)
end

puts @p1.name + ' ' + @p1.phone.to_s


#
# class Person
#   def inicialize(name, phone)
#     @name = name
#     @phone = phone
#   end
#   attr_reader :name, :phone
# end
#
# p1 = Person.new(name, phone)
#
# puts p1

# def create_new_friend(name, phone)
#   new_friend = Person.new(name, phone)
#   return new_friend
# end
#
# create_new_friend(name, phone)
#
# puts new_friend
