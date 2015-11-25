var Car = function (model, color)
{
  // may need to write getter/setters for these Ruby methods
  // attr_reader :model, :color, :current_speed, :odometer, :direction, :pizza_compartment

  this.model = model;
  this.color = color;
  this.current_speed = 0;
  this.odometer = 0;
  this.direction = 0;
  this.pizza_compartment = [];

  this.drive = function (distance)
  {
    this.odometer += distance;
  };

  this.accelerate = function (speed)
  {
    this.current_speed += speed;
  };
  this.decelerate = function (speed)
  {
    this.current_speed -= speed;
  };
  this.turn = function (direction)
  {
    if (direction == "left")
      this.direction += 90
    else
      this.direction -= 90
  };
  this.stow_pizza = function (pizza)
  {
    this.pizza_compartment.push(pizza)
  };
  this.get_pizza = function()
  {
    return @pizza_compartment.delete_at(0)
  };
};

var Pizza = function (order_id, size, type, price)
{
  this.order_id = order_id;
  this.size = size;
  this.type = type;
  this.price = price;
};


// ================== 3. Write Driver Code ==================

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