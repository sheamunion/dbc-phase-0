=begin
Die Class 1: Numeric

I worked on this challenge [by myself]

I spent 3.07 hours on this challenge.

0. Pseudocode

Input:
  - a number (denoting some number of sides)
  - a request to display or set the number of sides of a die
  - a request to roll the die
Output:
  - a number (the number of sides of a die), and,
  - a number (the roll of a die)
Steps:


CREATE a new die with some number of sides
  IF the number of sides is LESS THAN 1
    RAISE an error that tells us to use a positive integer when we create a die
  ELSE
    SET the sides of this die EQUAL TO the input number of sides
TELL us how many sides an existing die has
  RETURN the number of sides of the specified die
ROLL an existing die
  RETURN a random number between 1 and the number of sides of that die

# 1. Initial Solution
=end
class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Please use a positive integer when creating a die.")
    else
      @sides = sides
    end
  end

  def sides
    @sides
  end

  def roll
    roll = Random.new
    roll.rand(1..@sides)
  end
end


# 3. Refactored Solution
class Die
  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Please use a positive integer when creating a die.")
    else
      @sides = sides
    end
  end

  attr_reader :sides

  def roll
    roll = Random.new
    roll.rand(1..@sides)
  end
end

=begin
# 4. Reflection
What is an ArgumentError and why would you use one?

It is an error that is raised when the type or number of arguments passed does not match the type or number of arguments expected.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

I implmented the "attr_reader" and the "rand" methods. Both were easy to use. In reading about attr_reader, I also learned about attr_writer and attr_accessor. The ruby docs for Random was more comprehensive than I expected. All I wanted to know was how to generate a random number when given a range, which I found after a few minutes of reading.

What is a Ruby class?

Technically, a class is an instance of the Class class. As with everything else in Ruby, classes are objects. Classes are the only kind of object that can spawn new objects. Most classes consist of collections of attributes (variables) and behaviors (methods).

Conceptually, a class is like a blueprint. It has all the schematics for creating and manipulating *instances* of itself.

For example, the specific car I drive can be thought of as an instance of a class called Car. Every instance of a car has the same attributes (although not necessarily the same values) and has the same behaviors. The Car class can describe manufacturer, color, model name, engine size, trim level, fuel tank capacity, oil levels, mpg rating etc. We can do things to instances of the Car class like change their current fuel and oil levels, change their color, drive them, park them, and so on.

Why would you use a Ruby class?

Classes are really useful when we want to create many objects that have the same attributes and behaviors. Classes give us the ability to easily create any number of objects with built-in variables and methods. Classes empower us to do acheive comlex and innovative tasks. With classes, we can begin to model our world and to create new worlds limited only by our imagination.

For example, if we want to create a database of cars in a parking lot, we could type the following:

====== WITHOUT A CLASS ======
  car1_color = "Red"
  car1_make = "Honda"
  car1_model = "Fit"

  car2_color = "Blue"
  car2_make = "Subaru"
  car2_model = "Forester"

  def change_color(color, new_color)
    color = new_color
  end

  p change_color(car1_color, "Yellow") # => "Yellow"
  p change_color(car2_color, "Green") # => "Green"

However, imagine doing this for 100 cars. If we only stick with three variables (color, make, model), we will end up creatng 300 individual variables. Of course, we would probably leverage some iteration to accomplish that task. Regardless, this is not very DRY. Furthermore, it doesn't quite align with our conceptual understanding. A car is a collection of attributes and behaviors. A car's color is not "car color red." A car *is* red.

 If we use a class, we can create multiple objects with inherit variables (attributes) and methods (behaviors). This sounds much more close to our conceptual understanding of cars.

====== WITH A CLASS ======
  class Car
    def initialize(color,make,model)
      @color = color
      @make = make
      @model = model
    end

    attr_reader :make, :model
    attr_accessor :color
  end

  car1 = Car.new("Red", "Honda", "Fit")
  car2 = Car.new("Blue", "Subaru", "Forester")

  p car1.color= "Yellow" # >> "Yellow"
  p car2.color= "Green"  # >> "Green"


What is the difference between a local variable and an instance variable?
Where can an instance variable be used?

A local variable is defined within a method and can only be accessed or modified in the method. An instance variable is unique to the object to which it belongs (i.e. that instance of a class) and can be used by any messages that object responds to. An instance variable can be used by the object that created it. In the Car class, above, @color, @make, and @model are all instance variables. They can be used by any instance of the Car class. For example, the objects car1 and car2 (two different instances of the Car class) each use the instance variable @color.

Futhermore, remember that local variable names follow this style: local_variable. Instance variables are different in that they always begin with a single at sign: @instance_variable.
=end