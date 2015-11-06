# Class Warfare, Validate a Credit Card Number

# I worked on this challenge [with: Zach Schatz].
# I spent [#] hours on this challenge.

# ====== Release 1: Pseudocode ======

# Input: card number
# Output: true or false return determining the validity of the card number
# Steps:

# 1. define initialize method
#     # take the argument card_number
# - define our card_number [instance] variable
#     # create instance variable for card_number
# - Include ArguementError message for card_number not equal to 16 digits

# 2. define method to double every other digit, beginning with the second to last digit
# - put card_number into an array
#   # look to iterate through card_number_array to see each value
# - reverse the array
# - select every odd index and double that value
#   # if the index is NOT divisible by two then double that value

# 3. define a method to add up all the individual digits
# - split the values with two digits (using some sort of instance variable)
#   # look for doubled values that have a length of 2
#   # split these values into separate digits
# - Add up the individual digit values to the other digits for a total sum


# 4. define condition to return true/false of card_number validity
# - IF digit total is divisble by 10, return true
# - ELSE return false


# ====== Release 2: Initial Solution ======

# Don't forget to check on initialization for a card length
# of exactly 16 digits


# class CreditCard
#   def initialize(card_number)
#     @card_number = card_number
#     if @card_number.to_s.length != 16
#       raise ArgumentError.new("Card number must be exactly 16 digits.")
#     end
#   end
#   def double_every_other
#     @card_number_array = []
#     @doubled_values = []
#     @dont_double = []
#     @card_number_array = @card_number.to_s.chars.reverse
#     @card_number_array.each_with_index do |value, index|
#       if index % 2 != 0
#         @doubled_values << (value.to_i * 2)
#       else
#         @dont_double << value.to_i
#       end
#     end
#   end
#   def sum_of_digits
#     @double_digit_array = []
#     @single_digit_array = []
#     @double_digit_int_array = []
#     @final_array = []
#     @doubled_values.each do |value|
#       if value.to_s.length == 2
#         @double_digit_array << value.to_s.split('')
#       else
#         @single_digit_array << value
#       end
#     end
#     @double_digit_array.flatten.each do |value|
#       @double_digit_int_array << value.to_i
#     end
#     @final_array = @single_digit_array + @double_digit_int_array + @dont_double
#     @sum = 0
#     @final_array.each do |value|
#       @sum+=value
#     end
#   end
#   def check_card
#     self.double_every_other
#     self.sum_of_digits
#     if @sum % 10 == 0
#       return true
#     else
#       return false
#     end
#   end
# end

# card = CreditCard.new(4563960122001999)
# card.double_every_other
# card.sum_of_digits
# card.check_card

# ====== Release 4: Refactored Solution ======
class CreditCard
  def initialize(card_number)
    @card_number = card_number.to_s.chars.reverse.map(&:to_i)
    raise ArgumentError.new("Card number must be exactly 16 digits.") if @card_number.length != 16
  end
  def double_every_other
    @card_number.each_with_index do |value, index|
      @card_number[index] = value * 2 if index.odd?
    end
  end
  def sum_of_digits
    @sum = @card_number.join.chars.map(&:to_i).reduce(:+)
  end
  def check_card
    double_every_other
    sum_of_digits
    @sum % 10 == 0 ? true : false
  end
end

# ====== Release 5: Reflection ======

# 1. What was the most difficult part of this challenge for you and your pair?

# Although we spent several hours coding the four methods, we knew what we had to do and just plodded along making progress. We really didn't get stumped until the very final step, which turned out to be the most elusive part of this challenge. We knew #check_card had to be defined in the CreditCard class and we had coded the correct if/else statement. The problem was making #check_card call the two instance methods and then return the correct value.

# 2. What new methods did you find to help you when you refactored?

# - I used the following methods in this challenge--I've not used them before: #split, #flatten, #odd, #join, and (&:to_i)

# 3. What concepts or learnings were you able to solidify in this challenge?

# - You cannot use #to_i or #to_s directly on collections. They must be used on strings or numbers.
# - You can "add" arrays together using the + operator.
# - I learned about the ampersand operator. Specifically, array.map(&:to_i) is the same as writing array.map { |value| value.to_i }