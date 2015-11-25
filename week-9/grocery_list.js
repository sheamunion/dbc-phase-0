// =========== Pseudocode ===========

// Create a new grocery list as an object with properties and values
//     properties should be the names of the items
//     values should be teh quantities of the items

// Create a method to add an item and its quantity.
//     receives a string and an integer
//     Adds the  string as property
//     Adds the  integer as that property's values
//     prints "Added [item]: [quantity] to the list."

// Create a method to remove an item and its quantity.
//     recieves one string
//     removes the property matching that integer from the list
//     prints "[item] has been removed from the list."

// Create a method to update an item's quantity.
//     receives one string and one integer
//     finds the property matching the string and sets its value to the integer
//     prints "[item] quantity updated to: [quantity]."

// Create a method that prints the list legibly
//     print a header row for "Items" and "Quantity"
//     print every property-value pair e.g.:
//     Items     Quantity
//     Cucumber  2
//     Apples    4

// =========== My Solution ===========

function List(name) {
  this.name = name;
  // this.created_by = owner; // Decided to postpone this feature
  this.list = {};
  this.add = function (item, quantity) {
    this.list[item] = quantity;
  }
  this.remove = function (item) {
    delete this.list[item];
  }
  this.update = function (item, quantity) {
    this.list[item] = quantity;
  }
  this.print = function() {
    console.log("Items: Quantity");
    for (var item in this.list) {
      console.log(item + ": " + this.list[item]);
    }
  }
};

// =========== Driver Code ===========
document.getElementById("list_name_submit").onclick = function () {
  document.getElementById("display_area").innerHTML = document.getElementById("list_name");

  // var list_name = new List(document.getElementById("list_name"));
  // document.getElementById("display_area").innerHTML = list_name.name;
};
// console.log(list_name);

// var groceries = new List("groceries", "Shea");
// groceries.add("apple",6);
// console.log(groceries.list);
// groceries.remove("apple");
// console.log(groceries.list);
// groceries.add("kiwi",1);
// console.log(groceries.list);
// groceries.update("kiwi",4);
// console.log(groceries.list);
// groceries.remove("kiwi");
// console.log(groceries.list);
// groceries.add("kiwi",1);
// groceries.add("apple",3);
// groceries.add("banana",6);
// groceries.print();