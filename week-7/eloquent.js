// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var greeting = "Salutations!"
console.log(greeting)

// var fav_food = prompt("What is your favorite food?");
// alert("Hey! That's my favorite food too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
var pound = "#"
for (var counter = 0; counter < 7; counter++) {
  console.log(pound);
  pound += "#";
}

var number = 1;
for (var counter = 0; counter < 100; counter++) {
  if (number % 3 == 0 & number % 5 == 0)
    console.log("FizzBuzz");
  else if (number % 3 == 0)
    console.log("Fizz");
  else if (number % 5 == 0)
    console.log("Buzz");
  else
    console.log(number);
  number++
}

var size = 16
for (var counter = 0; counter < (size / 2); counter++) {
    console.log("# # # #\n");
    console.log(" # # # #\n");
}

// Functions

// Complete the `minimum` exercise.

function min(a, b) {
  if (a < b)
    return a;
  else
    return b;
}
console.log(min(6,4));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Shea",
  age: 29,
  favoriteFoods: ["jiaozi", "pizza", "smoothies"],
  quirk: "I wear a headlamp when I read in bed at night."
}

console.log(me)