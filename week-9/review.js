// Smallest Integer

// I worked on this challenge [by myself].

// smallest_integer is a method that takes an array of integers as its input
// and returns the smallest integer in the array

// +list_of_nums+ is an array of integers
// smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+

// If +list_of_nums+ is empty the method should return nil

// Your Pseudocode

// DEFINE a function that receives a list of numbers.
// CREATE a variable to hold the smallest number.
// ITERATE through the list and compare the current number to the next number.
// STORE the smaller number in the variable.
// RETURN the variable.

// Your Solution Below
var smallest_integer = function(array) {
  var smallest = 1;
  for (var i = 0; i < array.length; i++) {
    if (array[i] < array[i+1]) {
      smallest = array[i];
      // console.log(smallest);
    }
    else {
      smallest = array[i+1];
      // console.log(smallest);
    }
  return smallest;

  }
  // console.log(smallest);
}

var my_list_1 = [1,2,3];
var my_list_2 = [0,-10,10];
var my_list_3 = [-10,-20,-30];

console.log(smallest_integer(my_list_3));