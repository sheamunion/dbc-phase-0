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
// Initial Code

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






// Refactored Code






// Reflection
//
//
//
//
//
//
//
//