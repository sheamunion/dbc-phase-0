// DOM Manipulation Challenge


// I worked on this challenge [with: William Brinkert].


// Add your JavaScript calls to this page:

// =================== Release 1: ===================
var div = document.getElementById("release-0");
div.className = "done";
// OR
document.getElementById("release-0").className = "done";


// =================== Release 2: ===================
document.getElementById("release-1").style.display = "none";


// =================== Release 3: ===================
var h1Collection = document.getElementsByTagName("h1");
h1Collection[0].innerHTML = "I completed release 2.";
// OR
document.getElementsByTagName("h1")[0].innerHTML = "I completed release 2.";


// =================== Release 4: ===================
document.getElementById("release-3").style.background = "#955251";


// =================== Release 5: ===================
var collection = document.getElementsByClassName("release-4");
for (var i = 0; i < collection.length; i++) {
  collection[i].style.fontSize = "2em";
}

// =================== Release 6: ===================
var template = document.getElementById("hidden");
document.body.appendChild(template.content.cloneNode(true));

// =================== Reflection ===================
// 1. What did you learn about the DOM?
//
//    We learned that the DOM is very logical. It has a clear hierarchy.
//    The elements in the DOM can be accessed and manipulated using the
//    methods identified below.
//
// 2. What are some useful methods to use to manipulate the DOM?
//
//    We can access the elements of the DOM using IDs, classes, and
//    tag names--e.g. getElementById(), getElementsByClassName(), and
//    getElementsByTagName(). They can also be accessed based on their
//    relationship to other tags (e.g., parents and children).
//    Furthermore, we can alter the style of elements using .style and
//    change the actual conent of tags using .innerHTML.