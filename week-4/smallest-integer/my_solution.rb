# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
#If the array is empty, return 'nil'.
  a = list_of_nums[0]
  b = list_of_nums[1]
  c = list_of_nums[2]

  if list_of_nums == []
    return nil
  elsif list_of_nums.size == 1
    return list_of_nums[0]
  elsif a < b
    if a < c
      return a
    else
      return c
    end
  elsif b < c
    return b
  else
    return c
  end
end

#I want to compare the first value (a, index 0) with second item (b, index 1) to determine which is smaller.

#If a is smaller, compare it to the third item (c, index 2).

#If b is smaller, compare it to the third item (c, index 2).

#Repeat until all values have been compared. Keep the value of the smallest item.