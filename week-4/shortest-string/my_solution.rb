# Shortest String

# I worked on this challenge [by myself].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below

=begin ======PSEUDOCODE 1======

INPUT: a seris of words (as an array of strings)
OUTPUT: the shortest word (a string in an array)

CREATE an empty array called OUTPUT

IF the INPUT is empty
  RETURN a value of nothing
IF the INPUT is not empty
  FOR each word in the INPUT
      IF length of word 1 (target) is less than length of next word
        set the OUTPUT array equal to word 1 (target)
      IF the length of word 1 (target) is greater than length of next word
        increase word 1 (target) to the next word (target+1) and run this conditional again.
      END the if statement
        return OUTPUT array
  END the loop
END the if statement

=end #======PSEUDOCODE 1======

=begin ======Initial Solution DOES NOT WORK======

def shortest_string(list_of_words)
  if list_of_words == []
    return nil
  elsif list_of_words.length == 1
    return list_of_words[0]
  else
    counter = 1
    target = 0
    next_word = 1
    while counter < list_of_words.length
      if list_of_words[target].length < list_of_words[next_word].length
        next_word += 1
      elsif
        target += 1
        next_word += 1
      end
      counter += 1
    end
    return list_of_words[target]
  end
end

=end  #======Initial Solution======

#=begin ======SECOND ATTEMPT WORKING======
def shortest_string(list_of_words)
  length = list_of_words.length
  if list_of_words == []
    return nil
  elsif length == 1
    return list_of_words[0]
  else
    a = 0
    b = 1
    while b < length
      if list_of_words[a].length < list_of_words[b].length
        output = list_of_words[a]
        b += 1
      else
        output = list_of_words[b]
        a = b
        b += 1
      end
    end
    return output
  end
end

#=end #======SECOND ATTEMPT WORKING======

#=begin #======REFACTORED SOLUTION WORKING======
def shortest_string(list_of_words)
  length = list_of_words.length
  if list_of_words == []
    return nil
  else
    list_of_words.min_by { |x| x.length }
  end
end


#=end #======REFACTORED SOLUTIONWORKING======