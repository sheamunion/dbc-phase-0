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
    @column_letter = @columns.sample #choose a random column letter
    random = Random.new
    @number = random.rand(1..100) #choose a random number
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
  # Public: Initialize a BINGO board
  #
  # board - A nested array of integers.
  def initialize(board)
    @bingo_board = board
    @columns = %w(B I N G O)
  end
  def call_coordinate
#CHOOSE a random column that we can use in the other methods.
    @column_letter = @columns.sample
#CHOOSE a random number that we will check against the player's board.
    random = Random.new
    @number = random.rand(1..100)
#PUTS coordinates in 'pretty' format
    puts %(\nNew Round: We are looking for "#{@column_letter} #{@number}!" \n\n)
  end
  def check_column
#PUTS the column letter that was called
      puts "#{@column_letter}  "
#PUTS an "underline" for the column letter
      puts "--"
#CREATE the initial result of comparison between player's board's row and the row called.
      result = false
      @bingo_board.each do |row|
#COMPARE value in every row of the called column on player's board with the called row. If the value is the same, replace it with an 'X'
        if row[@columns.index(@column_letter)] == @number
          row[@columns.index(@column_letter)] = "X"
          result = true
        end
        puts row[@columns.index(@column_letter)]
      end
#IF there was a match congratulate the player. ELSE encourage them to try again.
      if result
        puts "\nLucky you!\n"
      else
        puts "\nBetter luck next time!\n\n"
      end
  end
  def show_board
#CREATE a header row with spacing
    @columns.each {|letter| print " #{letter}  "}
#PUTS an "underline" for the header row
    puts "\n--------------------"

#print every row with spacing
    @bingo_board.each do |row|
#====== begin PRINT ROWS HANDLING SINGLE DIGITS ======
# If a number is only one digit print extra space to keep format.
      n = 0
      5.times do
        if row[n].to_s.length == 1
          print " #{row[n]}  "
        else
          print " #{row[n]} "
        end
        n +=1
      end
#====== end PRINT ROWS HANDLING SINGLE DIGITS ======
#====== begin PRINT ROWS ======
# THE COMMENTED CODE IN this section works but single digits ruin the formatting of the output. If you don't understand or if you want proof then do the following: Run the program as it is and look at the output of show_board. Then, uncomment the code in this section and comment the section called "PRINT ROWS HANDLING SINGLE DIGITS". Run the program again and look at the output of show_board. Compare the format to the first time you ran it.
#             print " #{row[0]} "
#             print " #{row[1]} "
#             print " #{row[2]} "
#             print " #{row[3]} "
#              print " #{row[4]} "
#====== end PRINT ROWS ======
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
  new_game.call_coordinate
  new_game.check_column
end

new_game.show_board


=begin ====== Release 6: Reflection ======
1. How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

I thought it was

2. What are the benefits of using a class for this challenge?



3. How can you access coordinates in a nested array?



4. What methods did you use to access and modify the array?



5. Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?



6. How did you determine what should be an instance variable versus a local variable?



7. What do you feel is most improved in your refactored solution?



=end