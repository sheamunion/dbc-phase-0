# OO Basics: Student


# I worked on this challenge [with: Tal Schwartz].
# This challenge took us 1.5 hours.

# ============== Initial Solution: ==============

class Student
  attr_accessor :first_name, :scores, :average, :letter_grade

  def initialize(name, scores)
    @first_name = name
    @scores = scores
    self.get_average
    self.get_grade
  end

  def get_average
    sum = 0
    @scores.each { |score| sum += score }
    @average = sum/scores.length
  end

  def get_grade
    case
    when @average >= 90
      @letter_grade = "A"
    when @average >= 80 #&& < 90
      @letter_grade = "B"
    when @average >= 70 #&& <80
      @letter_grade = "C"
    when @average >= 60 #&& <70
      @letter_grade = "D"
    when @average < 60
      @letter_grade = "F"
    end
  end
end

def linear_search(list, name)
  list.each_with_index do |student, i|
    if student.first_name == name
      return i
    else
      return -1
    end
  end
end

def binary_search(list, name, imin, imax)
  unsorted_list = []
  list.each{|x| unsorted_list << x.first_name}
  sorted_list = unsorted_list.sort
  mid_position = imin + ((imax-imin)/2)
  if name == sorted_list[mid_position]
    p unsorted_list.index(name)
  elsif name > sorted_list[mid_position]
    binary_search(list, name, mid_position+1, imax)
  else name < sorted_list[mid_position]
    binary_search(list, name, imin, mid_position-1)
  end
end

alex = Student.new("Alex", [100,100,100,0,100])
jon = Student.new("Jon", [80,100,100,0,67])
james = Student.new("James", [90,100,48,0,43])
jane = Student.new("Jane", [86,100,100,0,96])
mark = Student.new("Mark", [75,100,89,0,100])

students = [alex, jon, james, jane, mark]

# ============== Initial Tests: ==============

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0

# ============== Additional Tests 1: ==============

p students[0].average == 80
p students[0].letter_grade == 'B'

# ============== Additional Tests 2: ==============

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1
binary_search(students, "Alex", 0, students.length)
binary_search(students, "Jane", 0, students.length)
binary_search(students, "James", 0, students.length)
binary_search(students, "Mark", 0, students.length)
binary_search(students, "Jon", 0, students.length)

=begin ============== Reflection ==============

1. What concepts did you review in this challenge?

  - how to use attribute methods to read/write instance variables
  in a class
  - how to write a class
  - how to instantiate a class
  - how to initialize properties of class instances
  - how to write a case statement
  - how to perform a binary search
  - how to use recursion

2. What is still confusing to you about Ruby?

  I feel that I have a weak understanding of recursion. This challenge
  helped me advance that understanding, but, I still have so much to
  learn and solidify!

3. What are you going to study to get more prepared for Phase 1?

  I plan to complete every challenge in the Ruby module.

=end