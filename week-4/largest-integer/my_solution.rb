# Largest Integer

# I worked on this challenge [by myself].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
#=begin ====== TWEAKED SOLUTION FROM 4.6.1 ======
def largest_integer(list_of_nums)
  length = list_of_nums.length
  if list_of_nums == []
    return nil
  elsif length == 1
    return list_of_nums[0]
  else
    a = 0
    b = 1
    while b < length
      if list_of_nums[a] > list_of_nums[b]
        output = list_of_nums[a]
        b += 1
      else
        output = list_of_nums[b]
        a = b
        b += 1
      end
    end
    p output
  end
end
#=end ====== TWEAKED SOLUTION FROM 4.6.1 ======
#=begin ===== REFACTORED SOLUTION ======
def largest_integer(list_of_nums)
  if list_of_nums == []
    return nil
  elsif list_of_nums.length == 1
    return list_of_nums[0]
  else
    list_of_nums.max
  end
end
#=end ===== REFACTORED SOLUTION ======
