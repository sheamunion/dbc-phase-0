=begin
Die Class 2: Arbitrary Symbols


I worked on this challenge [by myself].
I spent [#] hours on this challenge.

====== Release 1: Pseudocode ======

Input: An array of strings.
Output: Either the number of elements in the array or a random element of the array.
Steps:

IF the array IS EMPTY,
  return an error
ELSE
  set an instance variable EQUAL TO the array
END
RETURN the number of elements in the array
SHUFFLE the elements in the array and return the first element

====== Release 2: Initial Solution ======
=end

class Die
  def initialize(labels)
    if labels.empty?
      raise ArgumentError.new("Please create a die with an array of characters.")
    else
      @labels = labels
    end
  end
  def sides
    @labels.length
  end
  def roll
    @labels.shuffle[0]
  end
end

# die = Die.new([])
# die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
# p die.sides
# p die.roll

=begin ====== Release 4: Refactored Solution ======

After reviewing my code and the Ruby Docs, I don't see how I can refactor it. I believe it is as simple as I can make it without losing readability. It is DRY as well.


What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

The main difference between the challenges was dealing with strings vs. integers. I didn't need to change the logic much at all. In fact, The only changes I made were in variable names and methods used. Although, I did remove the attr_reader method that I used in the original die class challenge.


What does this exercise teach you about making code that is easily changeable or modifiable?

It pays to put effort in to making code that is readable and easily compartmentalized. Therefore, in the future, pieces of code can be reused or repurposed.


What new methods did you learn when working on this challenge, if any?

I didn't learn about any new methods. I used methods with which I was already familiar.


What concepts about classes were you able to solidify in this challenge?

To be honest, I didn't solidify any concepts about classes in this excercise. I thought that this challenge was fairly simple and that it only required updating methods to handle strings instead of integers.


=end