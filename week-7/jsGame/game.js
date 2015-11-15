 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:
// Your mission is to teach a lesson to a group of your younger sibilings and their friends.
// Goals:
// Collect two books.
// Read the books.
// Prepare your lesson using the knowledge gained.
// Teach your lesson.
// Characters:
// Teacher
// Participants
// Objects:
// Teacher
// Book about financial responsibility.
// Book about kindliness.
// Book about truthfulness.
// Functions:
// collectBook(topic)
// readBook(title)
// prepareLesson(topic)
// teachLesson(topic)

// ========================= Pseudocode
// Create collectBook function
//   Identify book
//   Add that book to Teacher

// Create teachLesson function
//   Identify topic of lesson
//   alert that lesson has been taught

// Book Objects:
// title = "Modern Chemistry"
// topic = "chemistry"
// type = "book"

// Teacher Objects
// backpack = books[beginnerFinances, ...]
// knowledge = "chemistry","financial responsibility","truthfulness"...
//
//   Create readBook function
//   Identify book to read
//   access the book's topic
//   add topic to teacher

// Create prepareLesson function
// set teacher's "prepared" to true

//================================= Initial Code
/*
function Teacher(name) {
  this.name = name;
  this.booksRead = [];
  this.lessonsReady = [];
};

function Book(title, topic) {
  this.title = title;
  this.topic = topic;
  this.type = "book";
};

function Backpack() {
  this.items = [];
};

function Lesson(topic, false) {
  this.topic = topic;
  this.prepared = prepared;
};

var beginnerFinances = new Book("Beginner Finances", "financial responsibility");
var modernChemistry = new Book("Modern Chemistry", "chemistry");
var foundationOfVirtues = new Book("The Foundation of Virtues", "virtues");

var myPack = new Backpack();

myPack.items = beginnerFinances;

var shea = new Teacher("Shea", myPack);

shea.backpack = myPack;

shea.backpack["items"];

shea.booksRead = modernChemistry;


function prepareLesson(topic) {
  if (shea.booksRead["topic"] == topic) {
    console.log("You have prepared a lesson on " + topic + ".");
    var chemLesson = new Lesson("chemistry", true);
    shea.lessonsReady = chemLesson;
  }
};
console.log(shea.lessonsReady);
prepareLesson("chemistry");
console.log(shea.lessonsReady);

*/

//================================= Refactored Code

function Teacher(name) {
  this.name = name;
  this.booksRead = [];
  this.lessonsReady = [];
  this.backpack = [];
  this.collect = function(item) {
    this.backpack.push(item);
    console.log("You put the " + item["type"] + " in your backpack.");
  };
  this.readBook = function(book) {
    this.booksRead.push(book);
    console.log("You read " + book["title"] + ".\n You have acquired knowledge about " + book["topic"] + ".");
  };
  this.prepareLesson = function(topic) {
    if (this.booksRead.length == 0) {
      console.log("You have not read any books.\n You must acquire knowledge before preparing a lesson. Go read a book!");
    }
    else {
      var hasKnowledge = false;
      while (hasKnowledge == false) {
        for (var index = 0; index < this.booksRead.length; index++) {
          // WHY WILL PROGRAM NOT EXECUTE CONTENTS OF IF STATEMENT
          console.log(index);
          if (this.booksRead[index]["topic"] == topic) {
            console.log("You have prepared a lesson on " + topic + ".");
            this.lessonsReady.push(topic);
            hasKnowledge = true;
          }
        };
      };
      if (!hasKnowledge) {
        console.log("You have not read any books on that specific topic.\n You must acquire knowledge of the topic\n by reading a book about it.");
      }
    }
  };
};
function Book(title, topic) {
  this.title = title;
  this.topic = topic;
  this.type = "book";
};

// ============ DRIVER CODE ============

// var player = new Teacher(prompt("Please enter a name for your character")); // Create a new teacher with user-provided name

// var player = new Teacher("Shea"); // Create a new teacher
var beginnerFinances = new Book("Beginner Finances", "financial responsibility"); // create some books
var modernChemistry = new Book("Modern Chemistry", "chemistry");
var foundationOfVirtues = new Book("The Foundation of Virtues", "virtues");
// player.collect(foundationOfVirtues); // put a book in backpack
// player.readBook(foundationOfVirtues); // read a book
// player.readBook(modernChemistry);
// player.readBook(beginnerFinances);

// player.prepareLesson("financial responsibility"); // prepare a lesson
// player.prepareLesson("virtues");
// player.prepareLesson("chemistry");



// ======================== testing readline

var readline = require('readline');

var rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

console.log("Welcome to \"They Are the Future\,\" an interactive, text-based game where you play as an intrepid individual striving to build a better world. Amidst the violence and disunity afflicting society, you choose to see hope in humanity. But, it is a hope that requires effort. You are convinced that if humanity is to advance towards a peaceful, just, and proserpous world order, the education of children of every generation must be given the highest priority. For, they are the future.\n\n");

rl.question("Please enter a name for your character: \n", function(name) {
  var answer = new Teacher(name);
  return answer
  rl.close();
});

// console.log("\n\n Welcome, " + player.name + "! Your mission is to teach a group of youngsters in your neighborhood a lesson that will help them navigate the next few years of their lives. Before you can teach a lesson you must acquire knowledge by reading books. There are several books to read: \n");

// console.log(beginnerFinances.title);
// console.log(modernChemistry.title);
// console.log(foundationOfVirtues.title);





// ======================== testing readline





















// Reflection
//
//
//
//
//
//
//
//