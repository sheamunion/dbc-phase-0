=begin
Pad an Array

# I worked on this challenge [with: Gregg Wehmeier & Shea Munion]

# I spent 1 hour on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
  - an array
  - an integer describing the inimum size of the new array
  - a string or number to pad the array

# What is the output? (i.e. What should the code return?)
  - an array that is padded with the input or default value if the minimum size is greather than the input array's length.

# What are the steps needed to solve the problem?
1st attempt:
IF min size is larger than input array's length
  add "value" to new array
ELSE return the array
IF there's a value, fill the new array with value

2nd attempt:
WHILE min size is larger than array's length
  add "value" to  array
END
RETURN output array


# 1. Initial Solution
=end

def pad!(array, min_size, value = nil) #destructive
  while  min_size > array.length
    array << value
  end
  return array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  array.each do |item|
    new_array << item
  end
  while  min_size > new_array.length
    new_array << value
  end
  return new_array
end


#3. Refactored Solution
def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  new_array = array.map{|item| item}
  while  min_size > new_array.length
    new_array << value
  end
  return new_array
end

=begin
# 4. Reflection
Were you successful in breaking the problem down into small steps?

I believe so. In fact, our pseudocode, while written in plain English, looks just like our real code.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

Yup. The translation was pretty simple. I think the one part that stumped us was determining how to make pad! non-destructive. We figured that out in a short time, though!

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

Our initial solution for pad! was successful, for pad it was unsuccessful. I think pad! was successful becasue our pseudocode was so accurate. Our pad method was missing the code that made it non-destructive. So, we got those errors in rspec. Once we realized that, we sussed out a solution in a short time.

When you refactored, did you find any existing methods in Ruby to clean up your code?

After reviewing our code and the rdocs, we determined that our code was readable and follows the DRY principle. We explored several built-in methods like #push and #map. While we did provide a refactored pad solution using #map that removes two lines of code and a few characters, it is arguable whether it makes a great difference in this particular context. We chose not to use #push because << works just as well in this case and we only wanted to append one item at a time in the loop.

How readable is your solution? Did you and your pair choose descriptive variable names?

I think our solution is quite readable. It's short and the variable names are descriptive.

What is the difference between destructive and non-destructive methods in your own words?

The former permanently changes the value of the object to which a variable is pointing. The latter leaves the values of the original object unchanged. Desctructive method names are followed by a bang "!"
=end