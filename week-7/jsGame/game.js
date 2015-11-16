 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:
// Your mission is to teach a lesson to a group of youngsters in your neighborhood.
// Goals:
// Collect an item.
// Read the book.
// Prepare a lesson using the knowledge gained.
// Characters:
// Teacher
// Objects:
// Teacher
// Book
// Functions:
// collect(item)
// readBook(title)
// prepareLesson(topic)

// ========================= Pseudocode
// Create collectBook function
//   Identify book
//   Add that book to Teacher

// Create prepareLesson function
//   Identify topic of lesson
//   alert that lesson has been prepared

// Book Objects:
// title = "Modern Chemistry"
// topic = "chemistry"
// type = "book"

// Teacher Objects
// backpack = books[beginnerFinances, ...]
// lessonsReady = "chemistry","financial responsibility","truthfulness"...
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

// Define Teacher constructor
function Teacher(name) {
  this.name = name;
  this.booksRead = [];
  this.lessonsReady = [];
  this.backpack = [];

  // define function to put an item in backpack
  this.collect = function(item) {
    this.backpack.push(item);
    console.log("You put the " + item["type"] + " in your backpack.");
  };

  // define function to read a book
  this.readBook = function(book) {
    this.booksRead.push(book);
    console.log("You read " + book["title"] + ".\n You have acquired knowledge about " + book["topic"] + ".");
  };

  // define function to prepare a lesson
  // a teacher must have read at least one book
  // if the teacher has read any book with specified topic, prepare the lesson
  // if not, tell teacher to read a book on that topic
  this.prepareLesson = function(topic) {
    if (this.booksRead.length == 0) {
      console.log("You have not read any books.\n You must acquire knowledge before preparing a lesson. Go read a book!");
    }
    else {
      var hasKnowledge = false;
      for (var index = 0; index < this.booksRead.length; index++) {
        if (this.booksRead[index]["topic"] == topic) {
          console.log("You have prepared a lesson about " + topic + ".");
          this.lessonsReady.push(topic);
          hasKnowledge = true;
          break;
        }
      };
      if (!hasKnowledge) {
        console.log("You have not read any books about " + topic + ".\n You must acquire knowledge of a topic\n by reading a book about it.");
      }
    }
  };
};

// Define Book constructor
function Book(title, topic) {
  this.title = title;
  this.topic = topic;
  this.type = "book";
};

// ============ DRIVER CODE ============

var player = new Teacher("Shea"); // should create a new object player which is an instance of Teacher with name "Shea"
var beginnerFinances = new Book("Beginner Finances", "financial responsibility"); // should create a new book
var modernChemistry = new Book("Modern Chemistry", "chemistry");  // should create a new book
var foundationOfVirtues = new Book("The Foundation of Virtues", "virtues");  // should create a new book
player.collect(foundationOfVirtues); // should log You put the book in your backpack.
player.prepareLesson("virtues"); // should log You have not read any books yet. You must acquire knowledge before preparing a lesson. Go read a book!
player.readBook(foundationOfVirtues); // should log You read [book's title]. You have acquired knowledge about [book's virture].
player.prepareLesson("virtues"); // should log You have prepared a lesson about [topic].
player.prepareLesson("financial responsibility"); // should log You have not read any books on that specific topic. You must acquire knowledge of a topic by reading a book about it.



// ======================== testing readline

// var readline = require('readline');

// var rl = readline.createInterface({
//   input: process.stdin,
//   output: process.stdout
// });

// console.log("Welcome to \"They Are the Future\,\" an interactive, text-based game where you play as an intrepid individual striving to build a better world. Amidst the violence and disunity afflicting society, you choose to see hope in humanity. But, it is a hope that requires effort. You are convinced that if humanity is to advance towards a peaceful, just, and proserpous world order, the education of children of every generation must be given the highest priority. For, they are the future.\n\n");

// rl.question("Please enter a name for your character: \n", function(name) {
//   var answer = new Teacher(name);
//   return answer
//   rl.close();
// });

// console.log("\n\n Welcome, " + player.name + "! Your mission is to teach a group of youngsters in your neighborhood a lesson that will help them navigate the next few years of their lives. Before you can teach a lesson you must acquire knowledge by reading books. There are several books to read: \n");

// console.log(beginnerFinances.title);
// console.log(modernChemistry.title);
// console.log(foundationOfVirtues.title);

// ======================== Reflection
// 1. What was the most difficult part of this challenge?

// Determining how to make this game interactive by getting
// input from a user in teh command line. I still have not been
// able to make this work--even though I've been reading about it
// for a few hours. I will continue to try and make this work!

// 2. What did you learn about creating objects and functions that interact with one another?

// Make sure that you define only properties that are
// absolutely necessary. Otherwise, objects can become bloated
// and overly complex.

// 3. Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// No, I stuck with methods that I knew would get the job
// done. I am comfortable researching and implmenting methods
// I do not know about, however, I won't do that for the sake
// of proving I can do it. If the program requires a better
// method, I will find it.

// 4. How can you access and manipulate properties of objects?

// The dot operator is my preferred way to do so. e.g.,
// object.property.