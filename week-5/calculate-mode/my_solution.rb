=begin
# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
  - an array of fixed numbers or strings

# What is the output? (i.e. What should the code return?)
  - an array of the most frequent values

# What are the steps needed to solve the problem?

CREATE a most_frequent array and set it equal to the array argument



# 1. Initial Solution
=end

def mode(array)
  histogram = Hash.new

  array.each do |item|
    histogram[item] = 0
  end

  array.each do |item|
    histogram[item] += 1
  end

  histogram.each do |key, val|
    puts "#{key}:#{val}"
  end


  #NOW I WANT TO MOVE THE KEY(S) WITH THE HIGHEST VALUE(S) INTO AN ARRAY
  #THEN I WANT TO RETURN THAT ARRAY
end

# mode([1,2,3,3,-2,"cat", "dog", "cat"])
mode(["who", "what", "where", "who"])


# 3. Refactored Solution




=begin
# 4. Reflection

Which data structure did you and your pair decide to implement and why?



Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?



What issues/successes did you run into when translating your pseudocode to code?



What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?



=end