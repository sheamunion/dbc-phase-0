/*
Gradebook from Names and Scores
I worked on this challenge with Peter Natewood.
This challenge took me 2 hours.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]


// __________________________________________
// Write your code below.
/*
var gradebook = {};

gradebook[students[0]] = {};
gradebook[students[1]] = {};
gradebook[students[2]] = {};
gradebook[students[3]] = {};

gradebook["Joseph"]["testScores"] =  scores[0];
gradebook["Susan"]["testScores"] =  scores[1];
gradebook["William"]["testScores"] =  scores[2];
gradebook["Elizabeth"]["testScores"] =  scores[3];

gradebook.addScore = function(name, score) {
  this[name]["testScores"].push( score );
}

gradebook.getAverage = function(name) {
  return average(gradebook[name]["testScores"]);
}

function average(array) {
  var sum = 0;
  for (var i = 0; i < array.length; i++) {
    sum += array[i];
  }
  sum = sum / array.length
  return sum;
}
*/
// __________________________________________
// Refactored Solution

var gradebook = {};

students.forEach( function( i ) { gradebook[ i ] = {} } );

for( var i = 0; i < students.length; i++ )
{
  gradebook[ students[ i ] ][ "testScores" ] = scores[ i ];
}

gradebook.addScore = function(name, score) {
  this[name]["testScores"].push( score );
}

gradebook.getAverage = function(name) {
  return average(gradebook[name]["testScores"]);
}

function average(array) {
  return array.reduce( function( a, b ) { return a + b } ) / array.length;
}

/* __________________________________________
Reflect

1. What did you learn about adding functions to objects?

  When we want to access a property of an object using a variable, we should use bracket notation. If we use dot notation, the variable name itself will be used instead of the variable's value.

2. How did you iterate over nested arrays in JavaScript?

  We used a for loop and the forEach method.

3. Were there any new methods you were able to incorporate?
If so, what were they and how did they work?

  Yes! We used forEach. Although we are familiar with Ruby's #each method, yet, we had not used forEach in JavaScript until this challenge. It works the same way as #each. We also used reduce to sum all the numbers in an array. When you call the method, you pass two subsequent elements of array to a function. Reduce will evaluate the expression and use the evaluation with the next element. Reduce will return a single value  This was new to one of us.

__________________________________________
Test Code:  Do not alter code below this line.*/


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)