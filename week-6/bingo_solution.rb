=begin
A Nested Array to Model a Bingo Board SOLO CHALLENGE

I spent [#] hours on this challenge.


====== Release 1: Pseudocode ======
Outline:

Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  Create a list of these five characters and select one at random.
  Create an inclusive range of these numbers and select one at random.
  Tell the player what the coordinates are.

Check the called column for the number called.
  Identify the column on the board that corresponds to the random letter.
  Check all numbers in that column to see if they match the random number.
  If it's a match, replace that number with an 'x'
  Otherwise do nothing.
  Print the player's column
  If it's a match, congratulate the player.
  If it's not a match, encourage the player to try again.

Display the board to the console (prettily)
  Create a method that prints each row on a new line.

====== Release 2: Initial Solution ======
=end
class BingoBoard
  def initialize(board)
    @bingo_board = board
    @columns = %w( B I N G O )
  end
  def call_coordinate
    @column_letter = @columns.sample
    random = Random.new
    @number = random.rand(1..100)
    puts @column_letter
    puts @number
  end
  def check_column
      puts @column_letter
      @bingo_board.each do |row|
        if row[@columns.index(@column_letter)] == @number
          row[@columns.index(@column_letter)] = 'X'
        end
        puts row[@columns.index(@column_letter)]
      end
  end
  def show_board
    print @bingo_board
  end
end

#====== Release 4:  Refactored Solution ======

class BingoBoard
  def initialize(board)
    @bingo_board = board
    @columns = %w(B I N G O)
  end
  def call_coordinates        # CHOOSE a random column & number & PUTS them.
    @column_letter = @columns.sample
    @number = rand(1..100)
    puts %(\nNew Round: We are looking for "#{@column_letter} #{@number}!" \n\n)
  end
  def check_column
      puts "#{@column_letter}  "    # PUTS the column letter that was called
      puts "--"                     # PUTS an "underline" for the column letter
      match_success = false         # CREATE the default result of a round
      @column_index = @columns.index(@column_letter)
      @bingo_board.each do |row|
        if row[@column_index] == @number # COMPARE value in every row of the called
          row[@column_index] = "x"       # column on player's board with the called
          match_success = true           # number. If the value is the same, replace it
        end                              # with an "x". PUTS each value in that column.
        puts row[@column_index]
      end
      if match_success          # IF there was a match, congratulate the player.
        puts "\nLucky you!\n\n"
      else                      # ELSE encourage them to try again.
        puts "\nBetter luck next time!\n\n"
      end
  end
  def show_board
    @columns.each {|letter| print " #{letter}  "}   # CREATE a header row with spacing
    puts "\n--------------------"                   # PUTS an "underline" for the header row
    @bingo_board.each do |row|                      # PRINT every row with spacing
      row.each do |column|
        if column.to_s.length == 1  # IF a number is only one digit print an extra space
          print " #{column}  "      # to keep format.
        else
          print " #{column} "       # ELSE print the number with regular spacing.
        end
      end
      puts
      puts
    end
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

200.times do
  new_game.call_coordinates
  new_game.check_column
end

new_game.show_board

# ====== Release 5: True Bingo Board ======
def generate_board
  board = [[],[],[],[],[]]    # Create an empty bingo board
  board.each do |row|         # assign a random number to each column in initial row
    b = rand(1..15)
    i = rand(16..30)
    n = rand(31..45)
    g = rand(46..60)
    o = rand(61..75)
    if row[0] = b             # if column already has that number, create a new random number and store it at those coordinates
      b = rand(1..15)
    else
      row[0] = b
    end
    if row[1] = i
      i = rand(16..30)
    else
      row[1] = i
    end
    if row[2] = n
      n = rand(31..45)
    else
      row[2] = n
    end
    if row[3] = g
      g = rand(46..60)
    else
      row[3] = g
    end
    if row[4] = o
      o = rand(61..75)
    else
      row[4] = o
    end
    board[2][2] = "x"
  end
end
# Driver code using release 5.
# board = generate_board
# new_game = BingoBoard.new(board)

# 200.times do
#   new_game.call_coordinate
#   new_game.check_column
# end

# new_game.show_board

=begin ====== Release 6: Reflection ======
1. How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

I thought it was straightforward. Thank goodness the logic didn't seem to be as challenging as some of those assignments in week 5. I think my pseudocoding is more verbose than concise. I think this has an advantage: there is less room for guessing on the part of the reader. However, with this style there is a potential for the writer to become confused with trying to hammer out minute details in pseudocode. I believe it is best to aim for just enough detail in pseudocode that anyone reading it will be able to work from it. Then, move on and start coding--who knows, the pseduocde may need to evolve as you code.

2. What are the benefits of using a class for this challenge?

One benefit is that the class maintains the state of the object. That is to say, the object attributes that are modified while the program runs are maintained. Basically, the class enables the board to "know" which coordinate has an "x" as a result of a successful match. This is important because we don't want to forget where we put an "x" every time a new coordinate is called. If we did that, we would never have a chance to win!

3. How can you access coordinates in a nested array?

We can create a 2-dimensional array where the first dimension defines one coordinate and the second defines another coordinate. In this challenge, the first dimension defined the row while the second defined the column. To access a coordinate, we first need to access the row, i.e., in the first dimension, and then access the column, i.e., in the second dimension. Specifically, we can do so like this: array[0][0]. This will access the element in the first row and the first column.

4. What methods did you use to access and modify the array?

#each and #index.

5. Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

I learned the #index and the #cycle methods. Althought I didn't use #cycle in my solutions, I did explore it when I was refactoring. Anyways, I will explain #index because I used it. #index will return the index of a value in an array. Simply call the method on an array and pass it the value who's index you want. e.g., if we have an array of letters in the alphabet, array.index("a") might return 0.

6. How did you determine what should be an instance variable versus a local variable?

If I needed a variable between methods, I made it an instance variable. If I only needed it within one method, I made it a local variable.

7. What do you feel is most improved in your refactored solution?

The greatest improvement is the formatting of the output. My goal in the initial solution was to confirm the methods functioned as desired. When I refactored, I focused on making the output beautiful which that required adding more code than my initial solution. I also tried to simplify the logic and eliminate unecessary variables and if/else statements.