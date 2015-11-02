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
      **I want to assign each person a group number. Create a hash where key = name and value = group number.
  RETURN OUTPUT
  CREATE INPUT
  INVOKE the process and pass it INPUT
=end

#====== RELEASE 2: INITIAL SOLUTION ======

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

#======  RELEASE 5: DRIVER TEST CODE ======

p create_groups(list_of_people) == {
  "James"=>1,
  "Adwoa"=>2,
  "David"=>1,
  "Jalal"=>2,
  "Dan"=>1,
  "Kevin"=>2,
  "Hassan"=>1}

# ====== RELEASE 4: INITIAL SOLUTION REFACTORED ======
# (Rearrange the output hash so that keys are the group numbers and the values are strings of people's names. Also, clean up output.)
def create_groups(people)
  number_people = people.length
  if number_people < 3
    group_quantity = 1
  else
    group_quantity = number_people / 3
  end
  group_number = 1
  groups_names = Hash.new("")
  people.each do |name|
    if group_number <= group_quantity
      groups_names[group_number] += (name + ", ")
      group_number += 1
    else
      groups_names[1] += (name + ", ")
      group_number = 2
    end
  end
  groups_names.each do |group, name|
    print "\n", "Group ", group, "\n"
    print name,  "\n"
  end
end

=begin
====== RELEASE 3: ADD COMPLEXITY ======



====== RELEASE 6: REFLECTION ======
What was the most interesting and most difficult part of this challenge?

The most difficult part was deciding when to stop!

Do you feel you are improving in your ability to write pseudocode and break the problem down?

Yes. I am still struggling to figure out my style and stick to best practices.But, I think it's coming along.

Was your approach for automating this task a good solution? What could have made it even better?

I think it is a good approach. I think there are some built-in methods that would help me refactor my code. I will continue to explore those.

What data structure did you decide to store the accountability groups in and why?

I chose a hash because I had two categories of related data: unique groups and names.

What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?

This may seem insignificant but I learned how to add a new line character using "\n". Formatting the output so it's legible was tricky but this character helped me accomplish that task. I think there are definitely some methods that would reduce the amount of code i have written. I am still exploring those methods.


=end