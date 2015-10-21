# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb. The first part of the error, before the line number.
# 2. What is the line number where the error occurs?
# => Well, the interpreter says line 170, but, I think the error occurs immediately after the 'end' of the 'while' condition. The cartman_hates method should have it's own 'end'.
# 3. What is the type of error message?
# => syntax
# 4. What additional information does the interpreter provide about this type of error?
# => It was expecting the keyword_end. It was not expecting end-of-input.
# 5. Where is the error in the code?
# => I think the error is immediately after the end of the 'while' condition.
# 6. Why did the interpreter give you this error?
# => The interpreter is expecting two instances of the keyword 'end' within this method: one to end the 'while' condition and one to end the method itself.

# --- error -------------------------------------------------------

south_park = "Satire"

# 1. What is the line number where the error occurs?
# => 36
# 2. What is the type of error message?
# => NameError
# 3. What additional information does the interpreter provide about this type of error?
# => It tells us that there is an undefined local vairable or method 'south_park'
# 4. Where is the error in the code?
# => Immediately after the end of the code.
# 5. Why did the interpreter give you this error?
# =>  The interpeter can't tell if we intended to define a method or instantiate a local variable. It didn't see a 'def' keyword so it may have assumed 'south_park' was a local variable name. Maybe it then expected to see an '=' followed by an object to complete the assignment. It didn't see that either so it doesn't know what we intended to do.

# --- error -------------------------------------------------------

def cartman()
end

# 1. What is the line number where the error occurs?
# => 51
# 2. What is the type of error message?
# => NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# => It tells us there is an undefined method 'cartman'
# 4. Where is the error in the code?
# => two places: before the method name and after it.
# 5. Why did the interpreter give you this error?
# => Methods should be defined using the keywords 'def' and 'end', as documented in the resolved code above.

# --- error -------------------------------------------------------

def cartmans_phrase(phrase)
  puts "I'm not fat; I'm big-boned! " + phrase
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# => 67
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => It tells us the wrong number of arguments was passed to the method '(1 for 0)'.
# 4. Where is the error in the code?
# => line 71, immediately after the method name 'cartmans_phrase'.
# 5. Why did the interpreter give you this error?
# => On line 71, we told the interpreter to call the method and pass it an argument ('I hate Kyle'). However, when the interpreter saw the method, it noticed that it doesn't accept any arguments. I have updated the method so that it accepts one argument puts both phrases.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("You're poor Kenny!")

# 1. What is the line number where the error occurs?
# => 86
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => It tells us the wrong number of arguments was passed to the method '(0 for 1)'.
# 4. Where is the error in the code?
# => line 90, immediately after we call the method.
# 5. Why did the interpreter give you this error?
# => The method 'cartman_says' requires one argument be passed to it. We we called the method, we passed no arguments at all. We should have called the method with an offensive message like the revised code above does.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Eric Cartman')

# 1. What is the line number where the error occurs?
# => 107
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => It tells us the wrong number of arguments was passed to the method '(1 for 2)'.
# 4. Where is the error in the code?
# => line 111, immediately afte the first argument is closed.
# 5. Why did the interpreter give you this error?
# => In this case, the interpreter read the method and saw that two arguments are required to run it: 'lie' and 'name'. On line 111, we only passed one argument when we called the method. I have added a second argument.

# --- error -------------------------------------------------------

print "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => line 126
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => It tells us that a string can't be coerced into Fixnum.
# 4. Where is the error in the code?
# => on line 126, after the '*' operator.
# 5. Why did the interpreter give you this error?
# => The interpreter expected to multiply 5 by another fixnum. However, it enountered a string. As we know, we cannot mulitply a fixnum by a string. Two options here, we can replace the string with a fixnum to evaluate an expression or we can swap the places of the fixnum and string to repeat the string '5' times. I have fixed the code to reflect the latter.

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# =>  line 141
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => It tells us that we divided a numerator by zero.
# 4. Where is the error in the code?
# => line 141, immediately after the '/' operator.
# 5. Why did the interpreter give you this error?
# => Basic division. We cannot divide a numerator by zero.

# --- error -------------------------------------------------------

#require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => line 157
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file -- /path/cartmans_essay.md
# 4. Where is the error in the code?
# => I suppose the error is the whole line or the file name.
# 5. Why did the interpreter give you this error?
# => We told the interpreter to load a file named 'cartmans_essay.md'. However, that file doesn't exist. If we had provided a valid file name, the error would not have been triggered.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# => Believe it or not, it was the first error: the un-ended method.
# How did you figure out what the issue with the error was?
# => I looked at the line number provided a couple times and verified that there was no code there causing the text. That made me think something was missing. So, I reviewed the code block and read it line by line, thinking like the interpreter. That's when I suspected that the either the method or 'while' condition hadn't been ended.
# Were you able to determine why each error message happened based on the code?
# => Yup.
# When you encounter errors in your future code, what process will you follow to help you debug?
# => I will read the error message and make sure I understand its different elements. I will be sure to read the error type and the additional infomration provided.