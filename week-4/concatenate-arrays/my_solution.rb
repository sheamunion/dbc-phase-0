# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

=begin ======PSEUDOCODE 1======

INPUT: two arrays
OUTPUT: single array composed of the two input arrays

create a an empty array called OUTPUT

IF the first array is empty and the second array is empty
  return OUTPUT
ELSE
  FOR EACH element in the second array DO this
    APPEND each element of second array to end of OUTPUT array
  END the loop
  return the OUTPUT

=end #======PSEUDOCODE 1======


#=begin ======Initial Solution======

def array_concat(array_1, array_2)
  output = array_1

  if array_1 == [] && array_2 == []
    return output
  else
    array_2.each do |value|
      return output << value
    end
  end
end

#=end  #======Initial Solution======

#=begin ======Refactored Solution======

def array_concat(array_1, array_2)
  if array_1 == [] && array_2 == []
    return array_1
  else
    return array_1.concat(array_2)
  end
end

#=end #======Refactored Solution======