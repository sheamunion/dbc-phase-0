=begin
Build a simple guessing game


I worked on this challenge [by myself].
I spent [#] hours on this challenge.

 ====== Release 1: Pseudocode ======

Input:
Output:
Steps:


====== Release 2: Initial Solution ======
=end
class GuessingGame
  def initialize(number)
    # prng = Random.new           # If we want to make the game fun
    # @answer = prng.rand(number) # we can generate a random number.
    @answer = number
  end
  def guess(guess)
    if guess > @answer
      @result = :high
    elsif guess < @answer
      @result = :low
    else
      @result = :correct
    end
  end
  def solved?
    if @result == :correct
      return true
    else
      return false
    end
  end
end
#====== Release 4: Refactored Solution  ======

class GuessingGame
  def initialize(number)
      @answer = number
  end
  def guess(guess)
    @guess = guess
    @guess = @guess > @answer ? :high : (@guess < @answer ? :low : :correct)
  end
  def solved?
    unless @guess == :correct
      return false
    else
      return true
    end
  end
end




=begin ====== Release 5: Reflection  ======
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?



When should you use instance variables? What do they do for you?



Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?



Why do you think this code requires you to return symbols? What are the benefits of using symbols?



=end