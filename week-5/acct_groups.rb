=begin
====== RELEASE 1: PSEUDOCODE ======
INPUT: a list of names (an array)
OUTPUT: a list of names and their assigned group nubmers (a hash)
STEPS:
  CREATE a process that accepts a list of names
    CREATE a new list of names that includes assigned group numbers
    **HOW DO I CREATE AND ASSIGN THE GROUP NUMBERS?
      **HOW DO I DETERMINE THE NUMBER OF GROUPS?
        **Number (INTEGER) of people in the list divided by 3 with no remainder (can't have part of a person) (we want at least three people in any group) THIS tells me how many groups to create
        => If we have ten people, we should have three groups. i.e. 10/3 = 3
      **I want to assign each person a group number. Create a hash where key = name and value = group number. We should only have three possible group numbers (assuming 10 people)


  RETURN OUTPUT
  CREATE INPUT
  INVOKE the process and pass it INPUT

====== RELEASE 2: INITIAL SOLUTION ======
=end
list_of_people = [
  "James",
  "Adwoa",
  "David",
  "Jalal",
  "Dan",
  "Kevin",
  "Hassan"]

def create_groups(people)
  number_people = people.length
  if number_people < 3
    group_quantity = 1
  else
    group_quantity = number_people / 3
  end
  names_groups = people.map.with_index { |name| [name, 0] }.to_h
  group_number = 1
  names_groups.each do |name, group|
    if group_number <= group_quantity
      names_groups[name] = group_number
      group_number += 1
    else
      names_groups[name] = 1
      group_number = 2
    end
  end
  p names_groups
end

#DRIVER TEST CODE
p create_groups(list_of_people) == {
  "James"=>1,
  "Adwoa"=>2,
  "David"=>1,
  "Jalal"=>2,
  "Dan"=>1,
  "Kevin"=>2,
  "Hassan"=>1}
=begin
====== RELEASE 3: ADD COMPLEXITY ======
=end

# WHAT IF TWO OR MORE PEOPLE HAVE THE SAME NAME? Then their names cannot be the key in our hash. Their names must be the values, the group numbers must be the keys.
#For every group number, append x names to that group number's value

list_of_people = [
  "James",
  "Adwoa",
  "David",
  "Jalal",
  "James",
  "Kevin",
  "Hassan"]

def create_groups(people)
  number_people = people.length
  if number_people < 3
    group_quantity = 1
  else
    group_quantity = number_people / 3
  end
  names_groups = people.map.with_index { |group, name| [0, name] }.to_h
#   group_number = 1
#   names_groups.each do |name, group|
#     if group_number <= group_quantity
#       names_groups[name] = group_number
#       group_number += 1
#     else
#       names_groups[name] = 1
#       group_number = 2
#     end
#   end
  p names_groups
end

#DRIVER TEST CODE
p create_groups(list_of_people)
# == {
#     "1"=>["James","David","James","Hassan"]
#     "2"=>["Adwoa","Jalal","Kevin"]
#     }


=begin
====== RELEASE 4: REFACTOR ======

=end
//code here//

=begin
====== RELEASE 5: DRIVER CODE ======

=end
//code here//

=begin
====== RELEASE 6: REFLECTION ======
What was the most interesting and most difficult part of this challenge?



Do you feel you are improving in your ability to write pseudocode and break the problem down?



Was your approach for automating this task a good solution? What could have made it even better?



What data structure did you decide to store the accountability groups in and why?



What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?



=end