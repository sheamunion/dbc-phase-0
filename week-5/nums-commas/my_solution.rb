=begin
# Numbers to Commas Solo Challenge

# I spent 1.83 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
  - a positive integer
# What is the output? (i.e. What should the code return?)
  - a comma-spearated integer as a string
# What are the steps needed to solve the problem?

CREATE a process that accepts a positive number
  CHANGE the number into a string
  IF the string is four characters long
    APPEND a comma after the first character in the string
  ELSIF the string is five characters long
    APPEND a comma after the second character in the string
  ELSIF the string is six characters long
    APPEND a comma after the third character in the string
  ELSIF the string is seven characters long
    APPEND a comma after the first character in the string
    APPEND a comma after the fifth character in the string
  ELSIF the string is eight characters long
    APPEND a comma after the second character in the string
    APPEND a comma after the sixth character in the string
  RETURN the string
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
=begin
# 2. Refactored Solution

========This is my FIRST refactored solution=====
I want to be able to append a comma at specific intervals in the string, for example, after every third item. I can't do that if I start from left to right of the string because I don't know how long the string will be. Therefore, I have to reverse the string and start at the true zeroth position of any length integer. I am now working from the left and I can easily find the third item, sixth item and so on.

CREATE a variable num and set it EQUAL to integer, convert it TO A STRING, and REVERSE the string.
CREATE variable length and set it EQUAL to the length of the string
  IF the length of the string is 4, 5, OR 6 (i.e. integer is a 4, 5, or 6 digit number)
    APPEND a comma after the third item in the string
  IF the length of the string is 7 OR 8
    APPEND a comma after the third item in the string
    APPEND a comma after the seventh item in the string
  END the if statement
REVERSE the updated string and RETURN it

=end

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
=begin
 ========This is my SECOND refactored solution=====

  SPLIT every character in the string into a separate element in an array
  REVERSE the array for the same reason noted in my first refactored solution
  FOR every fourth item in the array, (this would be at index 3, 6, 9 etc.)
    ADD a comma to that item
  REPEAT until each item is accounted for
  REVERSE the array and turn it back into a string
  RETURN the string
=end
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