# U2.W6: Testing Assert Statements

# I worked on this challenge [by myself].


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# Create a new function named assert
# => call the block of code named assert
# => if the result of the block is false
# => raise the error "Assertion failed!"
# => otherwise do nothing
# Declare a new variable named name
# Define a block named assert
# => return the evaluation of if variable is equal to "bettysue"
# Define a block named assert
# => return the evaluation of if variable is equal to "billybob"

# 3. Copy your selected challenge here

def get_grade(avg)
  if avg >= 90
    return "A"
  elsif avg >=80
    return "B"
  elsif avg >=70
    return "C"
  elsif avg >= 60
    return "D"
  else
    return "F"
  end
end

# get_grade(94) == "A"
# get_grade(84) == "B"
# get_grade(74) == "C"
# get_grade(64) == "D"
# get_grade(50) == "F"

# 4. Convert your driver test code from that challenge into Assert Statements

def assert
  raise "get_grade is not a method" unless yield
  raise "90 and above failed" unless yield
  raise "80 and above failed" unless yield
  raise "70 and above failed" unless yield
  raise "60 and above failed" unless yield
  raise "59 and below failed" unless yield
end
assert { defined?(get_grade) == "method" }
assert { get_grade(91) == "A" }
assert { get_grade(81) == "B" }
assert { get_grade(71) == "C" }
assert { get_grade(61) == "D" }
assert { get_grade(50) == "F" }

# 3. Copy your selected challenge here (ROUND 2)

def longest_string(list_of_words)
  # length = list_of_words.length
  if list_of_words == []
    return nil
  else
    return list_of_words.max_by { |x| x.length }
  end
end

array = Array.new(10) { |i| 'a' * (i + 1) }.shuffle
# puts longest_string(['ZZZ', 'zzzzz']) == 'zzzzz')

# 4. Convert your driver test code from that challenge into Assert Statements (ROUND 2)

def assert
  raise "Did not return longest string" unless yield
end

assert { longest_string(['ZZZ', 'zzzzz']) == 'zzzzz' }
assert { longest_string(array).length == 10 }


=begin ================= Reflection
1. What concepts did you review or learn in this challenge?

I reviewed assert statements, yield, and blocks. I didn't know yield works the way it does. I am happy I tackled this challenge.

2. What is still confusing to you about Ruby?

Wow. This is a really open-ended question. I will answer it in the context of assert statements. To be honest, I am not confused by this concept any more. I think assert statements are extremely valuable and I've gotten the hang of writing simple ones.

3. What are you going to study to get more prepared for Phase 1?

I plan to tackle every challenge in the Ruby module. I may also explore challenges in the Well Grounded Rubyist and on Ruby Monk.

=end