# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below

=begin ======PSEUDOCODE 1======

INPUT:
OUTPUT:

=end #======PSEUDOCODE 1======


#=begin ======Initial Solution======

#=end  #======Initial Solution======


#=begin ======Refactored Solution======

#=end #======Refactored Solution======


def longest_string(list_of_words)
  if list_of_words == []
    return nil
  elsif list_of_words.length == 1
    return list_of_words[0]
  else
    counter = 1
    target = 0
    next_word = 1
    while counter < list_of_words.length
      if list_of_words[target].length > list_of_words[next_word].length
        next_word += 1
      elsif
        target += 1
      end
      counter += 1
    end
    return list_of_words[target]
  end
end