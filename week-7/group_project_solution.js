Person 1 : Fatma

User Story:

As a user,
I should be able to provide a list of numbers and calculate the sum.
I should be able to provide a list of numbers and calculate the mean.
I should be able to provide a list of numbers which has an even length, it should give me the average of two middle numbers.
I should be able to provide a list of numbers which has an odd length, it should give me the middle number of the list.

Person 2: Shea

Pseudocode

Input: array of numbers.
Output: sum, mean, and median of the array.

Create a function called sum that accepts an array of numbers.
Return the sum of the numbers in the array.

Create a function called mean that accepts an array of numbers.
Return the mean of the numbers in the array.

Create a function called median that accepts an array of numbers.
If the length of the array is odd return the element in the middle of the array.
Else identify the two middle-most elements and return their average.


Person 3: Fatma

//Function for sum of array elements.
function sum(numbers) {
  var sum = 0;
  for (var index = 0; index  < numbers.length; index++ ) {
    sum = sum + numbers[index]
  }
  return sum;
}
console.log(sum([1, 2, 6]));

//Function for mean of array elements.
function mean(numbers) {
  var meanNumber = sum(numbers)/numbers.length; //calling sum function here.
  return meanNumber;
}
console.log(mean([1, 2, 6]));

//Function for median of array elements and considering the array length could be even or odd.
function median(numbers) {
  numbers.sort(function(a, b) {
    return a-b;
  }); //before finding the median,here it is sorting the numbers of array. This is provided comparison function instead default unicode sorting.
  var medianIndex = Math.floor(numbers.length / 2);

  if (numbers.length % 2 == 0) {
    return mean([numbers[medianIndex - 1], numbers[medianIndex]]) ;
  }
  else {
    return numbers[medianIndex];
  }
}
console.log(median([1, 6, 4, 7, 3])); //Checking for odd length of the array
console.log(median([1, 6, 2, 9, 5, 3])); //Checking for even length of the array



Person 4: Shea

Refactored code

// replaced for loop with reduce function.
// also removed variables--just return the evaluation
function sum(numbers) {
  return numbers.reduce((a, b) => a + b);
};

// removed variable--just return the evaulation
function mean(numbers) {
  return sum(numbers)/numbers.length;
}

// Median function is perfect. No refactoring required.