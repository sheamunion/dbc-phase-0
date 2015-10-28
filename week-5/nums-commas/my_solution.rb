=begin
# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
  - a positive integer
# What is the output? (i.e. What should the code return?)
  - a comma-spearated integer as a string
# What are the steps needed to solve the problem?

CREATE a method called separate_comma that accepts a positive integer
  CONVERT the input to a string
  IF the input is more than three characters long
    beginning from the end of the string, insert a comma every three characters
  END the if statement
  return the input
END the method


# 1. Initial Solution
=end
def separate_comma(integer)
  num = integer.to_s

  if num.length == 4
    num[0] += ','
  elsif num.length == 5
    num[1] += ','
  elsif num.length == 6
    num[2] += ','
  elsif num.length == 7
    num[0] += ','
    num[4] += ','
  end
  p num
end

p separate_comma(1000000) == "1,000,000"


# 2. Refactored Solution




# 3. Reflection