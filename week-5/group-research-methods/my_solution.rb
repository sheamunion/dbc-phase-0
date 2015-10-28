# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

=begin # Person 1's solution
input: an array and a letter
output: an array of words that contain that single-character

DEFINE a method my_array_finding_method that accepts the two inputs
  CREATE an empty array called output
  ITERATE through each item in the array argument
    IF the item contains the letter argument
      STORE that item in the output array
    ELSE do nothing with the item (this step is implicit)
    END the if statement
  END iteration
  RETURN the output array
END the method my_array_finding_method
=end

def my_array_finding_method(i_want_pets, thing_to_find)
  i_want_pets.select { |value| value.to_s.include? thing_to_find }
end

def my_hash_finding_method(my_family_pets_ages, thing_to_find)
  my_family_pets_ages.collect {|key, value| key if value == thing_to_find }.compact
end

=begin
# Identify and describe the Ruby method(s) you implemented.

.select
  - Returns an array of the values that match the code block. if no block is provided, return an empty array.

.include?
  - Returns true if the string includes the given string or character.

.collect
  - Returns an array of the elements based on the code block. Returns an array with 'nil' values if no block is provided.

.compact.
  - Removes nil elements from an array.


# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
=end