# Factorial

# I worked on this challenge [with James Artz].


# Your Solution Below
def factorial(number)
  if number == 0
    return 1
  else
    i = number-1
    while i >= 1
      number = number * i
      i = i - 1
    end
    return number
  end
end




# Find our pseudocode below


# Input: number
# Output: number that is the factorial of the input

# multiplication step: Take the input number and multiply input number by (itself minus 1)

# run the multiplication step until the input number equals 1

# output the product of the multiplication step


#   input is 6
#   x is output


#   x = input * input - 1

#   x = x * input - 2

#   x = x * input - 3

#   (do this until it reaches (input -1))

#   p x

#     until input == 1

#     while input >= 1

# def factorial(num)
#   a = 1
#   while num >= a do
#     x = num * (num -= 1)

#   end
# p x

# end



# def factorial(number)
#   x = 1
#   i = number

#   while i >= 1

#     x = x * (number * i)
#     i = i - 1
#     p x
#   end
# end
