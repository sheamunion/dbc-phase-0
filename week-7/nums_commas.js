/* Separate Numbers with Commas in JavaScript **Pairing Challenge**

I worked on this challenge with: Darius Atmar.

====== Release 1. Pseudocode ======
Add commas to a number in the form a string

Input: Number
Output: String representation of the number

Steps:
Count digits in number
  convert number to string
No commas if 3 digits or less
Reverse numberstring 1000 => 0001 .reverse();
Start a loop
Every 3 digits insert a comma until end of array/string
Reverse again

counter, counter2 keep track of commas
(counter - counter2)

====== Release 2. Initial Solution ======*/

var number = 1000000;
number = number.toString();
if (number.length > 3) {
  number = number.split("").reverse();
  var commaCount = 0;
  var counter = 1;
  while (counter < number.length) {
    if ((counter-commaCount) % 3 == 0) {
      number.splice(counter, 0, ",");
      counter++;
      commaCount++;
    }
    counter++;
  }
  number = number.reverse().join("");
}
console.log(number);

//====== Release 4. Refactored Solution ======

do {
var number = prompt("Please enter a number only.");
} while (isNaN(number));
number = number.toString();
if (number.length > 3) {
  number = number.split("").reverse();
  var commaCount = 0;
  for (var counter = 1; counter < number.length; counter++) {
    if ((counter-commaCount) % 3 == 0) {
      number.splice(counter, 0, ",");
      counter++;
      commaCount++;
    }
  }
  number = number.reverse().join("");
}
console.log(number);

//====== Release 3. Your Own Tests (OPTIONAL) ======

// number.toString;
// console.log(typeof number);
// console.log(number.split(""));
// var myArray = ['0','0','0','1'];
// myArray.splice(3,0,"comma");
// console.log(myArray);

/*====== Release 5. Reflection ======

1. What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

To be honest, I did not remember how I originally approached this problem with Ruby. But, after completing this solution I reviewd my Ruby solution and it appears that my pair and I implemented a similar strategy. So, the logic was the same, but the implementation was different due to the nature of the two languages.

2. What did you learn about iterating over arrays in JavaScript?

It's pretty similar to Ruby. I suppose the primary difference is not having Ruby's #each or #each_with_index. Although, I did find a JS method called forEach, yet, I was unable to successfully implement it in this challenge.

3. What was different about solving this problem in JavaScript?

The primary difference was how the methods like #splice, #split, #toString work. In particuluar, it appears that some of these methods are destructive (#split) while others are not (#toString and #splice). Further, it's not clear which is which unless you've experimented with them. At least in Ruby, the "!" denotes destructive methods.

4. What built-in methods did you find to incorporate in your refactored solution?

I made our initial solution more useful by implementing a do...while loop to continue asking for a number if the user provides a string. We also swtiched from a while loop to a for loop.

We didn't implment any more built-in methods while refactoring. I think we used all the appropriate methods in our initial solution. I do remember that when I did this challenge in Ruby, I used only if/else statements in my initial solution. That seems silly at this point. We have demonstrated understanding of built-in methods and control flow. However, if you found a way to refactor our code using built-in methods that we didn't use, please send me a message and tell me!
*/