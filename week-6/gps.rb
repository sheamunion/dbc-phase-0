# Your Names
# 1) Shea Munion
# 2) Amaar Fazlani

# We spent 1.5 hours on this challenge.

# Bakery Serving Size portion calculator.
#defines method serving_size_calc which takes in two arguments, one is a string the other is an integer
#creates a hash with key value pairs of name of item to make and its order quantity
#check if item that is input is included in the library, if it is not then present error.
#calculate the remainder of the difference between order quantity that is input and the serving size in library for particular item to make.
#if the difference between order quantity and serving size is 0 return string
#if the difference between order quantity and service size is greater than 0 then return a different string

# rename variables for more semantic sense
# refactor case statement
# refactor the error statmeent
# refactor how we get serving size
# create suggested baking items logic

def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  if !(library.include?(item_to_make))
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end
  items_available = library[item_to_make]
  order_capacity = items_available / order_quantity
  remaining_items = items_available % order_quantity

  return "Calculations complete: You can fill #{order_capacity} order(s) of #{order_quantity} #{item_to_make}(s) and will have none leftover. You should make more #{item_to_make}(s)." if remaining_items == 0
  return "Calculations complete: You can fill #{order_capacity} order(s) of #{order_quantity} #{item_to_make}(s). You will have #{remaining_items} #{item_to_make}(s) leftover."
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

=begin ====== Reflection ======
1. What did you learn about making code readable by working on this challenge?

I learned that regardless of code functionality, the developer must clearly understand the purpose of the program at a conceptual and practical level. If they don't understand the actual scenario in which a function would be used, their refactoring and coding will likely be off the mark when it comes to actually using the code to accomplish a desired task. In this regard, it is extremely important for code to be well-documented and for variables and methods to be wisely and thoughtfully named.

2. Did you learn any new methods? What did you learn about them?

We didn't learn any new methods in this session, but, we became more familiar with #include? by using it. #include? will search a collection for a given value and return true or false depending on whether the value is in the collection.

3. What did you learn about accessing data in hashes?

We didn't learn anything new about accessing data in hashes. We were already familiar with this skill. We did become more familiar with #include?.

4. What concepts were solidified when working through this challenge?

We solidified in what scenairos it makes sense to use case/when statements vs. if/else statements.

=end