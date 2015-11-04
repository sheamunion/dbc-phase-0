# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
#p array[1][2][0]

#p array[1][2][0].to_s

# p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================

# p hash[outer:[inner:["almost"[3]]]]

# p hash[outer:[inner:["almost"][3]]]

# p hash[outer:{inner: {"almost" => {3 => "congrats!"}}}]

#p hash[outer:]

# p hash[:outer][:inner]["almost"][3]

# ============================================================

# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
# p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

=begin
===== failed solutions =====
for i in 0..number_array.length-1
  number_array[i]+=5
end
p number_array

number_array.each do |element|
  if element.kind_of?(Array)
    number_array[] element.each {|inner| inner +=5}
  else
    element +=5
  end
end
=end

#===== REFACTORED FOR READABILITY: updated "element" and "inner"
number_array.each_with_index do |lvl_1_element, lvl_1_index|
  if lvl_1_element.kind_of?(Array)
    lvl_1_element.each_with_index do |lvl_2_element, lvl_2_index|
      lvl_1_element[lvl_2_index] +=5
    end
  else
    number_array[lvl_1_index]  +=5
  end
end

# p number_array



# Bonus:
# ===== Release 4: n-Dimensional Arrays (Optional) ======

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
startup_names.each_with_index do |lvl_1_element, lvl_1_index|#Refactored original loop variables "element" and "index" for readability
  if lvl_1_element.kind_of?(Array)
    lvl_1_element.each_with_index do |lvl_2_element, lvl_2_index| #Refactored original loop variables "inner" and "index" for readability
      if lvl_2_element.kind_of?(Array)
        lvl_2_element.each_with_index do |lvl_3_element, lvl_3_index| #Refactored original loop variables "value" and "idx" for readability
          lvl_2_element[lvl_3_index] = lvl_3_element + "ly"
        end
      else
        lvl_1_element[lvl_2_index] = lvl_2_element + "ly"
      end
    end
  else
    startup_names[lvl_1_index] = lvl_1_element + "ly"
  end
end

# p startup_names
=begin ====== Release 5: REFLECTION ======
What are some general rules you can apply to nested arrays?

We can access values in nested arrays (i.e. nested_array[1][2][1]) similarly to how we do so with 1-dimensional arrays (i.e. array[1]).

We can check the types of an array's elements using .kind_of?. If we want to go deeper into an array, we can specificy the type as an array and if an element is one, we can then iterate through that element.

Nested arrays can contain hashes.

What are some ways you can iterate over nested arrays?

We can use .each_with_index in conjunction with .kind_of?. See our solutions for the nested array release and the bonus nested array release.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?

We used .each_with_index. I was familiar with this method because I've used it before. It basically returns the element value and element index for every element in an array. It's useful because sometimes you need to know the index of a value so you can replace that value with a new one. We learned about the .kind_of method which I explained above.