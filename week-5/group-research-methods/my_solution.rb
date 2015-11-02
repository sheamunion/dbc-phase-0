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
Person 2 : Done by Fatma Ocal
=end
##############################################################
# #Pseudocode
# # Create a method (called do_if_integer) for same condition in both challenges. The condition is if the number is Integer.
# # Create a method that takes two arguments, which are an array (or a hash) and number_to_add.
# # For array=> Method call for do_if_integer, if condition is true then add number_to_add to the Integer.
# # For hash => Method call for do_if_integer, if condition is true; then add number_to_add to hash value.
# #You can yield to a block to the add operation. Once it is completed, return to modified array or hash.
#
# # Solution Before refactoring with yield!
# def add_number_if_integer(element, number_to_add)
#   if element.is_a?(Integer)
#     element += number_to_add
#   else
#     element
#   end
# end

# Shared method in both array and hash
def do_if_integer(element)
  if element.is_a?(Integer)
    yield element
  else
    element
  end
end

#array
def my_array_modification_method!(array, number_to_add)
  # array.map! {|item| add_number_if_integer(item, number_to_add)} //this works if I don't yield to another block.
  array.map! {|item| do_if_integer(item){|element| element + number_to_add } }
end
p my_array_modification_method!(i_want_pets,2)


#hash
def my_hash_modification_method!(hash, number_to_add)
  hash.each do |k,v|
    hash.merge!(k => do_if_integer(v) {|value| value + number_to_add})
  end
end
p my_hash_modification_method!(my_family_pets_ages, 3)

# Ruby methods that have been implemented.
# .each {} ; iterates through each item of the array or hash,executes the given block for each by passing the element as parameter.
# .map! ; creates new array containing values returned by executing the block.If you use it for hash, the return value will be in an array, not hash!!!
# .merge!; returns a new hash containing the old hash containing new values returned from execution of the block by calling with the key and value.
# .update ; is same as merge!, both update and merge! are destructive methods for combining hashes.(merge is non-destructive method)
# yield ; method name calls a hidden block, When the method yields to a chunk of code, the code in block runs, and then the control returns to the method.
#
#
#
#
# # # Person 3 ## Unfortunately the person hasn't complete the task.
# # def my_array_sorting_method(source)
# #   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# # end
# #
# # def my_hash_sorting_method(source)
# #    source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# # end
# #
#
# # Ruby methods that have been implemented.
#
# # #
# # #
# # #
# #
# #
# # # Person 4 Unfortunately the person hasn't complete the task.
# # def my_array_deletion_method!(source, thing_to_delete)
# #   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# # end
# #
# # def my_hash_deletion_method!(source, thing_to_delete)
# #   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# # end
# #
# # # Identify and describe the Ruby method(s) you implemented.
# # #
# # #
# # #
# #
# #
# # Person 5 - Done by Fatma Ocal
# # I did this challenge by myself.
# #####################################################################
#solution for array challenge
def my_array_method(my_array)
  results = []
  # .instance_of is only returns true if the object is an instance of that exact class, not a subclass.
  results << my_array.select { |x| x.is_a? Fixnum} # [3, 2]
  results << my_array.select { |x| !x.is_a? Fixnum} # ["I", "want", "pets", "but", "only", "have"]
  return results #[[2, 3], ["I", "want", "pets", "but", "only"]]
end
p my_array_method(i_want_pets)


#### another solution for hash key value pairs < 4
def my_hash_splitting_method(source, age)
  all_pets_array = []
  #   all_pets_array << source.select{ |name, pets_age| pets_age < age }
  #   all_pets_array << source.select{ |name, pets_age| pets_age >= age }
  all_pets_array << source.each_with_object([]) do |pet_data, array|
    array << pet_data if pet_data[1] < 4 #[["Hooibe", 3], ["Annabelle", 0], ["Ditto", 3]] "Dittos" => 3
  end
  all_pets_array << source.each_with_object([]) do |(pet, age), array|
    array << [pet, age] if age >= 4
  end
  #   hash[key] = value #how you add stuff to a hash
end
p my_hash_splitting_method(my_family_pets_ages, 4)

# def my_hash_splitting_method(source, age)
#   results = [[],[]]
#   source.select do |x,y| y
#     if y < age
#       results[0] << [x, y]
#     else
#       results[1] << [x, y]
#     end
#   end
#   p results
# end


# Another solution for the same problem
#Array
# def my_array_splitting_method(source)
#   output_array = [[],[]]
#   source.select do |element|
#     if element.is_a?(Integer)
#       output_array[0]<< element
#     else
#       output_array[1]<< element
#     end
#   end
#   output_array
# end
# p my_array_splitting_method(i_want_pets)

#Hash
# def my_hash_splitting_method(source, age)
#   all_pets_array = [[],[]]
#   source.each do | name, pets_age |
#     if pets_age < age
#       all_pets_array[0] << [name, pets_age]
#     else
#       all_pets_array[1] << [name, pets_age]
#     end
#   end
#   all_pets_array
# end
# p source = {"spot" => 3, "rex" => 5}
# p my_hash_splitting_method(my_family_pets_ages, 4)