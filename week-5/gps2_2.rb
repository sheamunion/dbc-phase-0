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

def add_item_qty(list_name, item, quantity)
  list_name[item] = quantity
  list_name
end

def remove_item_qty(item)
  list_name.reject { |key, value| key == item }
  return list_name
end

list = create_list
p list.is_a?(Hash)

p add_item_qty(list, "Lemonade", 2) == {"Lemonade" => 2}


# Lemonade, qty: 2
# Tomatoes, qty: 3
# Onions, qty: 1
# Ice Cream, qty: 4