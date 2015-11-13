Person 1 : Fatma
User Story.

Person 2 : Shea

Pseudocode:

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


Person 3: Fatma

Person 4: Shea