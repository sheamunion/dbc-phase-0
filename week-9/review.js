// ================== Smallest Integer: JS Style ==================

// I worked on this challenge [by myself].

// smallest_integer is a method that takes an array of integers as its input
// and returns the smallest integer in the array

// +list_of_nums+ is an array of integers
// smallest_integer(list_of_nums) should return the smallest integer
// in +list_of_nums+

// If +list_of_nums+ is empty the method should return nil

// ================== My Pseudocode ==================

// DEFINE a function that receives a list of numbers.
// CREATE a variable to hold the smallest number.
// ITERATE through the list and compare the current number to the
// next number.
// STORE the smaller number in the variable.
// RETURN the variable.


// ================== My Solution Below ==================
var smallest_integer = function(array) {
  var smallest = array[0];
  for (i in array)
  {
    if (smallest > array[i])
    {
      smallest = array[i];
    }
  }
  return smallest;
}

var my_list_1 = [1,2,3];
var my_list_2 = [0,-10,10];
var my_list_3 = [-20,-10,-20,-30];

console.log(smallest_integer(my_list_3));

// ================== Reflection ==================
// 1. What concepts did you solidify in working on this challenge?
//
//    How to find the smallest or largest integer in an array. I was stumped
//    (again) for a while before I realized I was not replacing the value
//    of "smallest" and using that in the IF comparison. Once I made that
//    change and began comparing the "smallest" to the current item, I
//    solved the challenge. Also, I was reminded how to define functions
//    in JS.
//
// 2. What was the most difficult part of this challenge?
//
//    As I wrote above, it was difficult to solve the logic of the challenge.
//
// 3. Did you solve the problem in a new way this time?
// 4. Was your pseudocode different from the Ruby version? What was
//    the same and what was different?
//
//    Wow. I just looked at my initial solution from Week 4 for this
//    challenge. It's really encouraging to see the difference between
//    that pseudocode & solution and this one. That one is so complex and
//    verbose. I remember that I really struggled with the challenge back
//    in Week 4. I think I did solve the problem in a new way this time.
//    This time, it was much simpler and more elegant.