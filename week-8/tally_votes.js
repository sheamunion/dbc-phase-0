// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Zach Schatz.
// This challenge took me 4 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode


// We must access each student's vote.
// Then, for each office, we must access the candidate name.
// If the candidate has recieved a vote already (check voteCount for the
// candidate's name) then add one more vote to his/her total votes.
// If the candidate has not recieved a vote already (check voteCount for the
// candidate's name) then add the candidate to the voteCount for that office
// and set his/her total votes to one.

// We must sort all the candidates for each officer by the number of votes
// each candidate received.
// We cannot sort an object by value, so we must create an array of the specific
// elements with which we are concered, and sort it.
// Each element in the array we want will have a candidate and their total votes. So
// it will be a nested array. We want four different nested arrays--one for each
// officer.
// We will have to loop through each officer in voteCount and create a nested array
// each time.
// Then, we can sort the nested array by total votes.
// Then, we simply access the first element (candidate) of the first inner array
// (voteCount[0]).

// __________________________________________
// Initial Solution

for (var student in votes) {
  var studentsVotes = votes[student];
  for (var position in studentsVotes) {
    var candidate = studentsVotes[position]
    if (voteCount[position].hasOwnProperty(candidate)) {
      voteCount[position][candidate] += 1;
    }
    else {
      voteCount[position][candidate] = 1;
    }
  }
}

// for (var position in voteCount) {
//   var candidatesVotes = [];
//   var candidates = voteCount[position];
//   for (var candidate in candidates) {
//     candidatesVotes.push([candidate, candidates[candidate]]);
//   }
//   var sortedCandidates = candidatesVotes.sort(function(a, b) { return a[1]-b[1]; } );
//   officers[position] = sortedCandidates.reverse()[0][0];
// }


// __________________________________________
// Refactored Solution

for (var position in voteCount) {
  var candidateVotes = [];
  var candidates = voteCount[position];
  for (var candidate in candidates) {
    var votes = voteCount[position][candidate];
    candidateVotes.push([candidate, votes]);
  }
  officers[position] = candidateVotes.sort(function(a, b) { return b[1]-a[1]; } )[0][0];
}


// __________________________________________
// Reflection

// 1. What did you learn about iterating over nested objects in JavaScript?

//   The for...in statement is an extremely valuable tool. We can use it to access
//   objects nested in other objects. It is very important to pay close attention
//   to the object, property, or value that you want to access. Otherwise, it is
//   very easy to become confused by what is or is not being returned. Furthermore,
//   #hasOwnProperty is useful to confirm whether or not an object has a specified
//   property.

// 2. Were you able to find useful methods to help you with this?

//   Yes. We used #hasOwnProperty and the for...in statement.

// 3. What concepts were solidified in the process of working through this challenge?

//    Name your variables accurately. When dealing with nested objects, it is easy
//    to become confused. Naming variables accurately can reduce that confusion.
//    Also, this was great practice with adding properties and values to objects.


// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)