# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below
#=begin ===== MY FIRST ATTEMPT IS WORKING =====
def count_between(list_of_integers, lower_bound, upper_bound)
  length = list_of_integers.length
  if list_of_integers == []
    return 0
  elsif upper_bound < lower_bound
    return 0
  else
    output = 0
    list_of_integers.each do |int|
      if int >= lower_bound && int <= upper_bound
        output += 1
      end
    end
    return output
  end
end
#=end ===== MY FIRST ATTEMPT IS WORKING =====
#=begin ===== MY REFACTORED ATTEMPT IS WORKING =====
def count_between(list_of_integers, lower_bound, upper_bound)
  length = list_of_integers.length
  if list_of_integers == []
    return 0
  elsif upper_bound < lower_bound
    return 0
  else
    p list_of_integers.count { |int| (int >= lower_bound) && (int <= upper_bound) }
  end
end
#=end ===== MY REFACTORED ATTEMPT IS WORKING =====
