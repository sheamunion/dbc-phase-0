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
  CREATE a variable called num and set it equal to the integer as a string
  IF the string is four characters long
    APPEND a comma after the zeroth index
  ELSIF the string is five characters long
    APPEND a comma after the first index
  ELSIF the string is six characters long
    APPEND a comma after the second index
  ELSIF the string is seven characters long
    APPEND a comma after the zeroth index
    APPEND a comma after the fourth index
  ELSIF the string is eight characters long
    APPEND a comma after the first index
    APPEND a comma after the fifth index
  END
  RETURN the variable num
END
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
  elsif num.length == 8
    num[1] += ','
    num[5] += ','
  end
  return num
end

# 2. Refactored Solution

#This is my first refactored solution
def separate_comma(integer)
  num = integer.to_s.reverse
  length = num.length
  if length == 4 || length == 5 || length == 6
    num[2] += ','
  elsif length == 7 || length == 8
    num[2] += ','
    num[6] += ','
  end
  return num.reverse
end

#This is my second refactored solution
  #   I now have an array of single elements from
  #   For every fourth item in the array, (this would be at index 3, 6, 9 etc.)
  #   I want to add a comma to that item
  #   and continue doing so until I reach the end of the array
  #   Finally, I want to reverse the array and turn it back into a string

def separate_comma(integer)
  num = integer.to_s.split("").reverse
  item_index = 0
  delimit_at = 3
  num.each do |item|
    if item_index == delimit_at  #6, 9, 12, etc.
      num[item_index] += ','
      delimit_at += 3
    end
    item_index += 1
  end
  return num.reverse.join
end


=begin
# 3. Reflection
=> What was your process for breaking the problem down? What different approaches did you consider?

First, I knew I needed to know the length of the number. Then, I remembered that strings can be treated as arrays. So, I decided to convert it to a string.

Then, I began by imagining an if-else statement. I first considered the simple case, namely, if the string is less than four characters. It's easy because all we have to do is return the string. I decided that since this case could be an implicit else, I wouldn't need to code it. Next, I want to figure out how to add a comma to a four digit number--if I can do that, I should be able to do it for longer numbers. Once I do that, I will simply alter the subsequent statements.


=> Was your pseudocode effective in helping you build a successful initial solution?

Yes! I was able to code a solution that passed the rspec--even though it uses several conditions.


=> What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?

I used #each, #split, #reverse, and #join. The only method with which I had difficulty implementing was #each because it took me time to write the correct logic for the loop.
The use of these methods did indeed change the way my code works. My initial solution would only work for 8 digit integers. This second refactored solution will work on any length integer!


=> How did you initially iterate through the data structure?

First, I created an array of single element characters using the input intger. I then used the #each method to iterate through that array.


=> Do you feel your refactored solution is more readable than your initial solution? Why?

No. I think my initial solution is more readable because it is so explicit and the logic is so simple. It's just a series of if-else statements. However, my initial solution does not account for integers longer than 8 digits and it is extremely repetitive. I think my refactored soution is as readable as it can get without my adding comments to each line of code. I tried to use explicit names and follow correct Ruby style.

=end