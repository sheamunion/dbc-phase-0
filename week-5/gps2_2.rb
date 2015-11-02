=begin


Release 1:


INPUT:
- title of list, item, qty
OUPTPUT:
- the list itself

CREATE a new method called create_list that accepts INPUT
  CREATE an empty list
END the method


INPUT:
- item, qty
OUPTPUT:
- the updated list
CREATE a method called add_item_qty that adds an item & its quantity to a list
  SET the item as the key of the list and qty as the     value
END the method

INPUT:
- item, qty
OUPTPUT:
- the updated list

CREATE a method called remove_item_qty that removes an item & its quantity from a list
  FIND the item and remove it from the list
END method


INPUT:
- item, qty
OUPTPUT:
- the updated list

CREATE a method called update_item_qty that updates a quantity for an item in the list
  FIND the item and update its qty
END method

INPUT:
- list name
OUPTPUT:
- printed list

CREATE a method called print_list that prints the list
  PRINT each item and its quanitity
END method

=end

def create_list
  Hash.new
end

def add_item(list_name, item, quantity)
  list_name[item] = quantity
  return list_name
end

def remove_item(list_name, item)
  list_name.delete_if {|key, value| key == item}
  return list_name
end

def update_item(list_name, item, qty)
  list_name[item] = qty
  return list_name
end

def print_list(list_name)
  list_name.each do |item, qty|
    puts "#{item}: #{qty}"
  end
end

list = create_list()

add_item(list, "Lemonade", 2)
add_item(list, "Tomatoes", 3)
add_item(list, "Onions", 1)
add_item(list, "Ice Cream", 4)

remove_item(list, "Lemonade")

update_item(list, "Ice Cream", 1)

print_list(list)

=begin
What did you learn about pseudocode from working on this challenge?

I leanred that patience is really important when working with mulitple people on pseudocode.

What are the tradeoffs of using Arrays and Hashes for this challenge?

If we wanted to use arrays, we would likely have to use nested arrays to have a way of associating two pieces of data: items and quanitity. Hashes are excellent for this purpose, which is why my partner and I chose to use one.

What does a method return?

A method returns the value of the last evaluated expression or an explicitly defined value.

What kind of things can you pass into methods as arguments?

Almost any object: arrays, hashes, strings, integers.

How can you pass information between methods?

You can create a global variable and pass the current contents of that variable between methods. You can also create a class and then use instance variables.

What concepts were solidified in this challenge, and what concepts are still confusing?

This challenge was not confusing. It just required some thought about what data structure to use and how to manipulate that structure.

=end