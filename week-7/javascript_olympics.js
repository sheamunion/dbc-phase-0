 // JavaScript Olympics

// I paired [with: Jacob Crofts] on this challenge.

// This challenge took us 1 hour.

// ====== Release 1. Bulk Up ======

function addWin(athletes_array) {
  // iterate through array
  // add win property to each object
  // set the value of win to (name) won the (event) event
  for (var counter = 0; counter < athletes_array.length; counter++) {
    athletes_array[counter].win = athletes_array[counter].name + " won the " + athletes_array[counter].event + " event.";
  }
};

var athletes = [{name: "Mike Tyson", event: "boxing"}, {name: "Sarah Hughes", event: "Ladies' Singles"}];
addWin(athletes);
console.log(athletes[0].win);

// ====== Release 2.  Jumble your words ======

  // define a function that accepts a string as an argument
  // convert that string into an array with each character as an
  // element in the array
  // reverse the array
  // concatenate each element in the array using a built-in JS method

function reverseString(some_string) {
  return some_string.split("").reverse().join("");
};

console.log(reverseString("hi"));

// ====== Release 3.  2,4,6,8 ======

  // create function that accepts an array of numbers and
  // returns an array the even ones.
  // for each number if its divisible by 2
  // if it is store it in the return array
  // if it's not do nothing.

// function evens(array) {
//   for (var counter = 0; counter < array.length; counter++) {
//     if (array[counter] % 2 != 0)
//       delete array[counter];
//   }
//   return array;
// };

function isEven(number) {
  return number % 2 == 0;
};
function evens(array) {
    return array.filter(isEven);
};

var numbers = [1,2,3,4,5,6,7,8];
console.log(evens(numbers));

// ====== Release 4. "We built this city" ======

function Athlete(name, age, sport, quote) {
  this.name = name;
  this.age = age;
  this.sport = sport;
  this.quote = quote
};

// Driver Code

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// ====== Release 5. Reflection ======

// What JavaScript knowledge did you solidify in this challenge?
//
//    While solving some of the challenges, we had to read about several
//  methods and how they work. We researched: reverse, split, splice, shift,
//  pop, reduce, and filter. In doing this research, we solidified our
//  understanding about the functions that are available in JS and the syntax
//  required to implment them. e.g., funtions require "()" after their names.
//  In general, we solidified our understanding about JS syntax compared to
//  Ruby syntax.
//
// What are constructor functions?
//
//    These are functions that enable you to create new objects with
//  pre-defined attributes and behaviors. HEY! That sounds very similar
//  to Ruby classes...
//
// How are constructors different from Ruby classes (in your research)?
//
//  -   Constructors require the keyword "this" to be prepended to
//    properties and methods.
//  -   Constructors do not use "initialize" methods like Ruby does.