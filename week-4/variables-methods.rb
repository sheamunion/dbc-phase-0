#Full-name greeting mini-challenge
puts "Greetings! May I know your first name?"
first_name = gets.chomp
puts "Thanks! How about your middle name?"
middle_name = gets.chomp
puts "Excellent! Finally, what is your last name?"
last_name = gets.chomp
puts "It's great to meet you " + first_name + ' ' + middle_name + ' ' + last_name + '!'

#Bigger, better favorite number mini-challenge
puts "Hi! May I know your favorite number?"
number = gets.chomp
better_number = number.to_i + 1
puts "That is a nice number, but not as awesome as " + better_number.to_s + "!"



