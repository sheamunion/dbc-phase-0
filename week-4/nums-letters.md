#4.2 Number, Letters, and Variable Assignments

##Release 1

###1. What does puts do?

<code>puts</code> will simply print the output to the console on a new line. It does not return anything.

###2. What is an integer? What is a float?

An integer is a number without decimals. e.g.: 1, 900, and -53562 are all integers.

A float is a number with decimals. e.g.: 1.49, 53.90, and -0.312 are all floats.


###3. What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

*Note: I assume the reader doesn't know anything about programming but s/he does know basic mathematics terminology.*

Integer division will always return integers. Even if we would expect an operation to return a quotient with a decimal, integer divison will only return an integer. In these cases, the resulting quotient will always be rounded down. i.e.: <code>9/4 = 4</code>.


##Release 2 Mini-challenges

```ruby
p 365*24 = 8760 hours

p 10*8760*60 = 5256000 seconds
```

##Release 5

**4.2.1**

[Defining Variables](https://github.com/sheamunion/phase-0/blob/master/week-4/defining-variables.rb)

**4.2.2**

[Simple String](https://github.com/sheamunion/phase-0/blob/master/week-4/simple-string.rb)

**4.2.3**

[Basic Math](https://github.com/sheamunion/phase-0/blob/master/week-4/basic-math.rb)

##Release 7

###1. How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Is this a trick question? I am not sure how to answer this one. Ruby handles these operations as I would handle them. Addition is addition, subtraction is subtraction, etc. I am not sure what learning competency this question is designed to assess. Perhaps it can be rewritten more explcitly.

###2. What is the difference between integers and floats?

Read answers for Release 1, #2, above. #DRY

###3. What is the difference between integer and float division?

Read answer for Release 1, #3, above. #DRY

###4. What are strings? Why and when would you use them?

Strings are objects that contain characters like letters, digits, punctuation etc. Strings are different from numbers. The arithmetic we use on numbers (like integers or floats) does not work the same way on strings. For example, when we use the addition operator on two strings, it concatenates them--it does not 'add' them like it would two numbers.

```ruby
  > puts '4' + '5'
  > 45
  > puts 4 + 5
  > 9
```

We use strings to work with text. For example, we may want to prompt a user to do something, like provide a user name or password. In such a case, we would use a string for the prompt and store the user name and passwords as strings. We do this because it makes sense to treat such content as text and not as numbers. We don't expect to perform numeric arithmetic on a user name.

###5. What are local variables? Why and when would you use them?

Local variables are those that exist only in the method in which they are defined. They cannot be updated or referred to outside that method.

###6. How was this challenge? Did you get a good review of some of the basics?

This challenge was quite simple. I did not require much time or problem solving to complete the exercises. I feel that this has been a good refresher of Ruby syntax. I am happy that I bought the book "Learn to Program", Second Edition.