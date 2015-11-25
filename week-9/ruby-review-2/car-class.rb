=begin
Create a Car Class from User Stories

I worked on this challenge [by myself].

================== 1. Pseudocode ==================

CREATE a blueprint for a car
  it has the following attributes:
    - model
    - color
    - current speed
    - odometer
  it has the following behaviors:
    - drive
    - accelerate
    - decelerate
    - turn


================== 2. Initial Solution ==================
================== 4. Add a Feature ==================
=end

class Car
  attr_reader :model, :color, :current_speed, :odometer, :direction, :pizza_compartment

  def initialize(model, color)
    @model = model
    @color = color
    @current_speed = 0
    @odometer = 0
    @direction = 0
    @pizza_compartment = []
  end

  def drive(distance)
    # move car [distance] miles.
    @odometer += distance
  end

  def accelerate(speed)
    @current_speed += speed
  end

  def decelerate(speed)
    @current_speed -= speed
  end

  def turn(direction)
    if direction == "left"
      @direction += 90
    else
      @direction -= 90
    end
  end

  def stow_pizza(pizza)
    @pizza_compartment.push(pizza)
  end

  def get_pizza
    return @pizza_compartment.delete_at(0)
  end
end

# ================== 5. Implement a New Class ==================

class Pizza
  def initialize(order_id, size, type, price)
    @order_id = order_id
    @size = size
    @type = type
    @price = price
  end
end

# ================== 3. Write Driver Code ==================
# Create a new car of your desired model and type
my_car = Car.new("Model S", "Silver")
p my_car.model == "Model S"
p my_car.color == "Silver"
p my_car.accelerate(25) == 25
p my_car.drive(0.25) == 0.25
p my_car.decelerate(25) == 0
p my_car.turn("right") == -90
p my_car.accelerate(35) == 35
p my_car.drive(1.5) == 1.75
p my_car.current_speed == 35
p my_car.decelerate(20) == 15
p my_car.drive(0.25) == 2
p my_car.decelerate(15) == 0
p my_car.turn("left") == 0
p my_car.accelerate(35) == 35
p my_car.drive(1.4) == 3.4
p my_car.decelerate(35) == 0
p my_car.odometer == 3.4

order_1 = Pizza.new("order_1", "L", "Supreme", 12)
order_2 = Pizza.new("order_2", "M", "Veggie", 10)
order_3 = Pizza.new("order_3", "S", "Meat Lovers", 8)
my_car.stow_pizza(order_1)
my_car.stow_pizza(order_2)
my_car.get_pizza
p my_car.pizza_compartment
my_car.stow_pizza(order_3)
p my_car.pizza_compartment
my_car.get_pizza
p my_car.pizza_compartment

=begin ================== 6. Reflection ==================
1. What concepts did you review in this challenge?

  - create & use a class
  - write & use attr methods
  - modify arrays

2. What is still confusing to you about Ruby?

  It's not related to this challenge, but, recursion is still confusing
  to me. I paired with someone on a recursion challenge and that helped.

3. What are you going to study to get more prepared for Phase 1?

  I am going to try and complete all of the Ruby review challenges. I
  am also going to try and turn this Ruby challenge into a JS
  browser-based game.
=end