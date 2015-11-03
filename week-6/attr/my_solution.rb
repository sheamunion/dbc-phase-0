#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

class NameData
  attr_reader :name
  def initialize
    @name = "Shea"
  end
end

class Greetings
  def initialize
    @student = NameData.new
  end
  def salutation
    puts "Hello #{@student.name}! How wonderful to see you today."
  end
end



=begin Reflection
====== Release 1 ======
 - What are these methods doing?

The methods are reading and writing the instance variables @age, @name, and @occupation.

 - How are they modifying or returning the value of instance variables?

The writer methods are receiving a new value as an argument and setting the instance variable eqaul to the new value in the body. Then, both reader and writer methods implicity return the value of the instance variables.

====== Release 2 ======
 - What changed between the last release and this release?
 - What was replaced?
 - Is this code simpler than the last?

This release employed a getter method, A.K.A. a reader method, A.K.A. an attribute reader method. This replaced the what_is_age method. This code is much simpler.

====== Release 3 ======
 - What changed between the last release and this release?
 - What was replaced?
 - Is this code simpler than the last?

This release employed a setter method, A.K.A. a writer method, A.K.A. an attribute writer method. This replaced the change_my_age method. This code is much simpler.

====== Release 6 ======
 - What is a reader method?
A method that gets or reads the value of an instance variable from an instance of a class.

 - What is a writer method?
A method that sets or writes the value of an instance variable from an instance of a class.

 - What do the attr methods do for you?
These methods allow us to accomplish the tasks of reading and/or writing the values of instance variables with many fewer lines of code than we could without them.

 - Should you always use an accessor to cover your bases? Why or why not?
I don't think it's wise to make a blanket statement like this one. As with everything we do in this field, our code should be well thought-out and reasoned. We should try to employ the most wise, simple, readable, DRY, and efficient approaches. Furthermore, the accessor method makes it possible to both read AND write to a variable. This is not always wise and may create security vulnerabilies in the software.

 - What is confusing to you about these methods?

At this point, I feel that I understand these methods well. I don't have any confusion about them now.

=end