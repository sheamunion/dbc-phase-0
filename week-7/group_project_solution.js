Person 1 : Fatma

User Story:

As a user,

I should be able to provide a list of numbers and calculate the sum.

I should be able to provide a list of numbers and calculate the mean.

I should be able to provide a list of numbers which has an even length, it should give me the average of two middle numbers.

I should be able to provide a list of numbers which has an odd length, it should give me the middle number of the list.

/*
Previous User Story:
As a user, I want to do build a function that takes an input from the user for an nested array and a hash with key/value pairs.
The input for nested array should be composed of two arrays.
I want one of the array takes odd integers and the array takes even integers from the user.
I want a function that gives the sum of the odd array and the sum of the even array and give me the total sum of the two arrays.
It should also be more smart and give me the sum of all elements in an array with an odd length.
It should also be more smart and give me the sum of all elements in an array with an even length.
Then, I want this program to give me the length of all three arrays also give their minimum and maximum values.
I want another two more functions one for mean operation and the other is for median operation.
The first function should return the mean of the most outer array (has two arrays in it).
I want the same function that gives mean of all elements with an odd length and an even length.
The second function should return the median of the most outer array (has two arrays in it).
I want the same function that gives the median of all elements with an odd length and an even length.
Once user finishes entering information about arrays, I want the user key in his/her information about name, age, occupation and his telephone number into another function.
if he is younger than 25 years and student, my program should wish him/her Good luck in her exams.
if he is older than 25 years and he is a programmer, my program should tell him/her Happy Coding and Keep Coding!.
No matter what is his age if he doesnt have a job, my program should tell him to start looking for jobs. Anything else he enters for his occupation, dont wish him anything.
I want his/her telephone number same value as every elements of the most outer array (that has both even and odd numbers).
If his telephone number is more or less than 11 digits, tell him the number is wrong information. If it is 11 digits, program should say Thanks, Mate!. Finally, print out all the information as summary he gave to the program as input.
*/

Person 2 : Shea

Pseudocode Version 2

Input: array of numbers.
Output: sum, mean, and median of the array.

Create a function called sum that accepts an array of numbers.
  Return the sum of the numbers in the array.

Create a function called mean that accepts an array of numbers.
  Return the mean of the numbers in the array.

Create a function called median that accepts an array of numbers.
  If the length of the array is odd return the element in the middle of the array.
  Else identify the two middle-most elements and return their average.


/*
Initial Pseudocode (version 1):
Input:
  - One nested array composed of an array of even integers and an array of odd integers.
  - One hash composed of name, age, occupation and phone number.
Output:
  - SUM of both arrays.
  - SUM of all elements in either array with odd length.
  - SUM of all elements in either array with even length.
  - LENGTH of evens array.
  - LENGTH of odd array.
  - LENGTH of nested array.
  - MINIMUM values of the three arrays.
  - MAXIMUM values of the three arrays.
  - A string depending on age or occupation
  - A string depending on length of phone number
DECLARE evenIntegers variable  and set its value EQUAL to [PROMPT user to provide a string of even numbers separated by spaces.]
DECLARE oddIntegers variable  and set its value EQUAL to [PROMPT user to provide a string of odd numbers separated by spaces.]
DECLARE name variable and set it EQUAL to [prompt the user for this value.]
DECLARE age variable and set it EQUAL to [prompt the user for this value.]
DECLARE occupation variable and set it EQUAL to [prompt the user for this value.]
DECLARE phone number variable and set it EQUAL to [prompt the user for this value.]
Convert evenIntegers to an array.
Convert oddIntegers to an array.
DECLARE outerArray as new array
ADD evenIntgers array and oddIntegers array to outerArray.
DEFINE a new array with properties and values (aka "hash" in Ruby language) called person.
Properties should be name, age, occupation, phone number.
Set values of properties EQUAL to the corresponding values the user provided earlier.
DEFINE a function that receives one nested array and one hash.
  DEFINE a function called numbers that accepts the nested array.
    ===MVP====
    ACCESS the evenIntegers array and sum every element.
    ACCESS the oddIntegers array and sum every element.
    PRINT the result of adding those two sums.
    PRINT length of evenIntegers
    PRINT minimum value of evenIntegers
    PRINT MAXIMUM value of evenIntegers
    PRINT length of oddIntegers
    PRINT minimum value of oddIntegers
    PRINT MAXIMUM value of oddIntegers
    PRINT length of outerArray
    PRINT minimum value of outerArray
    PRINT MAXIMUM value of outerArray
    ====Next MVP=====
    LOOP through the an array
      IF the length of the element is odd
        Add it to the sumOddLengths
      ELSE IF the length of the element is even
        Add it to the sumEvenLengths
      END if
      PRINT sumOddLengths
      PRINT sumEvenLengths
    END loop
  END numbers function
  CALL the numbers function and pass it the nested array.
  DEFINE a new function named hash that accesses the person hash
    IF the value of the occupation property EQUALS nil
      ALERT the user with "You better start looking for a job."
    ELSE IF value of the age property is LESS THAN 25
      ALERT the user with "Good luck on your exams".
    ELSE IF value of the age property is GREATER THAN 25 AND the value of the occupation property EQUALS "programmer"
      ALERT the user with "Happy coding and Keep coding!"
    ELSE
      do nothing.
    END if
    !!!!!!!!!
    "I want his/her telephone number same value as every elements of the most outer array (that has both even and odd numbers)."
    (Shea says: I do not understand this part of the story.)
    !!!!!!!!!
    IF value of the phone number property is NOT EQUAL to 11
      ALERT the user "Your phone number should have only 11 digits."
    ELSE
      ALERT the user "Thanks, Mate!"
    END if
    LOOP through the "hash"
      PRINT each property and value on a new line
    END loop
  END function
  CALL hash function and pass it person
END primary function
CALL the primary function and pass it outerArray and person.
