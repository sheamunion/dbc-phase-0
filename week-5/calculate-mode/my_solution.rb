=begin
# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Alan Alcesto]

# I spent 2 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
  - an array of fixed numbers or strings

# What is the output? (i.e. What should the code return?)
  - an array of the most frequent values

# What are the steps needed to solve the problem?

CREATE a histogram using the input
  CREATE a hash where the hash keys are those elements in the array and the hash values are the frequencies of those elements in the array
FIND the largest value in the histogram hash
  CREATE an array of the histogram values
  FIND the largest value using the largest integer method from week 4 to
  SET our mode to the largest integer
GET all the keys in the hash whose values match our mode
  CREATE an output array for the most frequent keys
  RETURN the output array



# 1. Initial Solution
=end

def mode(array)
# CREATE a histogram using the input
  histogram = Hash.new(0)
  array.each do |key|
    histogram[key] += 1
  end
# CREATE a list of only the values from the histogram
# APPEND every value in the histogram to the list of histogram values
  histogram_values = []
  histogram.each do |k, v|
    histogram_values << v
  end
# Using the histogram values, FIND the largest integer (our_mode)
# FOR each value in the list of histogram values
#   IF the value is greater than our mode
#     SET our mode equal to that value
  our_mode = 0
  histogram_values.each do |value|
    if value > our_mode
      our_mode = value
    end
  end
# Compare each value in the histogram with our mode
# IF they match,
#   APPEND that value's key to our list of most frequent keys
# RETURN our list of most frequent keys
  most_frequent_keys = []
  histogram.each do |key, value|
    if histogram[key] == our_mode
      most_frequent_keys << key
    end
  end
  return most_frequent_keys
end

# 3. Refactored Solution

def mode(array)
#CREATE a histogram using the input
  histogram = Hash.new(0)
  array.each do |item|
    histogram[item] += 1
  end
# COLLECT an array of every key
#   IF its value IS EQUAL to the maximum value in the histogram
# REMOVE all "nil" values in our new array
  return histogram.collect { |k, v| k if v == histogram.values.max }.compact
end

=begin
# 4. Reflection

Which data structure did you and your pair decide to implement and why?
We used a hash to create a histogram where the keys are the items from the input array and the values are the frequencies of those items.
We used arrays for a few reasons: we needed to find the largest value from the hash, so we needed to extract the values themselves so we could use our largest integer method from last week.


Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
This challenge was noticably more complex than the 5.2 challenge and it took us more time to write the pseudocode for this challenge than on the last challenge. Regardless, I still think we were successful in breaking the problem down.


What issues/successes did you run into when translating your pseudocode to code?
Settling on a hash to create a histogram was pretty easy. Finding out how to determine the mode and then find all the keys with that mode was the most challenging issue. We had several small successes that eventually led to the solution! For example, creating the histogram was a success. Putting the histogram values into an array was a success. Finding the mode was a success.


What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
We used .each to iterate. We eventually found .colelct. Both were pretty easy to implement.

However, we also used .compact (not for iterating) and that took us a few tries before we got it working.


=end