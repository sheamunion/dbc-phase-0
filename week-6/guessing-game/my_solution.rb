=begin
Build a simple guessing game


I worked on this challenge [by myself].
I spent [#] hours on this challenge.

 ====== Release 1: Pseudocode ======

Input: a number
Output: a sybmol and a boolean
Steps:
CREATE an instance variable for the answer
CREATE a method that receives a guess and determines
  IF the guess is LESS THAN the answer
    RETURN the sybmol :low
  ELSIF the guess is GREATER THAN the answer
    RETURN the sybmol :high
  ELSIF the guess EQUALS the answer
    RETURN the symbol :correct
  END
END
CREATE a method that tells user if the game is solved
  IF the result of the user's last guess EQUALS the sybmol :correct
    RETURN true
  ELSE
    RETURN false
  END
END
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
  def guess(my_guess)
    @guess = my_guess
    @guess = @guess > @answer ? :high : (@guess < @answer ? :low : :correct)
  end
  def solved?
    if @guess == :correct
      return true
    else
      return false
    end
  end
end

=begin ====== Release 5: Reflection  ======
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?

Instance variables represent the properties of a real-world object. For example, the color of a car, the name of a person, the model of a computer. Instance methods describe the behvaiors of such an object. For example, a car can *drive* or *park*, a person can *say hello*, and a computer can *calculate* a sum. Together, instance variables and methods describe the state of an object.


When should you use instance variables? What do they do for you?

Instance variables are useful when you are building a class. Every time an instance of the class is created, that object is associated with the instance variables (and methods) defined within that class. This is extremely useful if you desire to maintain mulitple instances of the class in different states. For example, you may want to represent multiple kinds and colors of cars. Intead of re-creating variables for every object, simply define instance variables within the class. Then, every instance of the class that you create will inherit those variables and they can be accessed anywhere within the that instance of the class.


Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

Flow control can be implmented wth either if/eslif/else statements or case/when/else statements. In the first form, a condition is evaluated and a boolean true or false is returned. Depending on the condition, the resulting code is evaluated, or, the statement is ended. In the latter form, a value is specifed (i.e. case name) and then a series of arguments are described (i.e. when "Jared", when "Amy"). If the value is the same as one of those conditions, the code defined within that "when" clause is executed. I did not encounter trouble using flow control in this challenge. I kept it simple by using if/else statements.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

Symbols are inherently immutable:

Symbols can only be overwritten while strings can be updated. For example, we can manipulate a string by appending and deleting characters. However, a symbol cannot be manipulated like a string. I think we returned sybmols in this challenge because the values are never going to change--we are never going to return anything other than :low, :high, or :correct. There is no need to have the interpreter assign memory each time we want to return a value by instantiating a new string for "low", "high", and "correct."

Symbols require less memory:

The interpreter handles symbols differently from strings. When a string is instantiated, it's given an unique object ID. Even when we type the same string again and again, a new instance is created and therefore a new object ID has been assigned to every instance. This means that more memory has been allocated to these strings. On the other hand, a symbol, once created, maintains the same object ID, no matter how many times it is written. This means the interpreter is allocating only enough memory for the one symbol.

Sybmols require less computational power:

In the previous paragraph, I stated that multiple strings with the same value will have different object IDs, while mulitple symbols with the same values will have only one ojbect ID. Well, this is important when the interpreter needs to two objects. When the interpreter sees that two objects have the same ID, it know's it's comparison work is complete. However, if two objects have different IDs, then the interpreter must evaluate the value of the objects and make a comparison.
=end