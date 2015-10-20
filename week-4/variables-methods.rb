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


# FIND MY SOLUTION TO 4.3.1 HERE:
https://github.com/sheamunion/phase-0/blob/master/week-4/define-method/my_solution.rb

# FIND MY SOLUTION TO 4.3.2 HERE:
https://github.com/sheamunion/phase-0/blob/master/week-4/math/my_solution.rb


# How do you define a local variable?
# => Simply type the variable name and assign it an object. Be sure to use the = sign and proper naming convention. i.e. first_name = "David"

# How do you define a method?
# => Begin by writing "def" followed by the method name followed by the arguments it accepts. You may wrap the parameters in parantheses and be sure to separate them with commas. Be sure to end the method by writing "end" after the body of the method. i.e. # def add(num1, num2)
# end

# What is the difference between a local variable and a method?
# => A method is like a process that can be invoked, can receive variables or parameters, process those parameters, and do something as a result. A local variable is simply a representation of an object which can be manipulated by the method wherein it is defined. A local variable relates to a value (like the integer 9 or the string "hello") and does not perform any action by itself. They must both be defined differently. See preivous two answers for how.

# How do you run a ruby program from the command line?
# => type ruby followed by the file name. i.e. > ruby add_numbers.rb

# How do you run an RSpec file from the command line?
# => type rspec followed by the file name. i.e. > rspec add_numbers_spec.rb

# What was confusing about this material? What made sense?
# => To be honest, I didn't find this material too confusing. The logic for the challenges was quite simple. I have prior experience with variables and methods so I am somewhat familiar with the topics. The one time I got stumped for several moments was when I ran rspec on 4.3.2. Originally, I had inlcuded "puts" in the body of each of the methods. For some reason, when I ran the rspec it gave me errors on every method. It finally occurred to me that "puts" always returns a final value of nil. The rspec was expecting "12" as a result of the add() method, but "puts" was returning "nil". I removed "puts" from every method and the rspec was clean.