=begin
A Nested Array to Model a Bingo Board SOLO CHALLENGE

I spent [#] hours on this challenge.


====== Release 1: Pseudocode ======
Outline:

Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  Create a list of these five characters and select one at random.
  Create an inclusive range of these numbers and select one at random.

Check the called column for the number called.
  Look at the bingo board.
  Identify the column on the board that corresponds to the random letter.
  Check all numbers in that column to see if they match the random number.
  If it's a match, replace that number with an 'x'.
  If it's not a match, encourage the user to try again.

Display a column to the console
  Create a method that receives a requested column.
  Idenify the column and print every number in that column.

Display the board to the console (prettily)
  Create a method that prints each row on a new line.

====== Release 2: Initial Solution ======
=end
class BingoBoard
  def initialize(board)
    @bingo_board = board
    @columns = %w( B I N G O )
    @bingo_board[0][3] = "08" # so my formatting in show_board is pretty. of course, this doesn't work for a randomly generated board.
  end
  def call_coordinate
    @column_letter = @columns.sample #choose a random column letter
    random = Random.new
    @number = random.rand(1..100) #choose a random number
    puts "We are looking for #{@column_letter} #{@number}! \n\n"
# for every row, if the value
    # occupied by the letter's index == @number then...
    @bingo_board.each do |row|
      if row[@columns.index(@column_letter)].to_s == @number.to_s
        puts "Lucky you!\n\n"
        row[@columns.index(@column_letter)] = "X"
      end
    end
  end
  def show_column(letter)
    puts "#{letter}  "
    puts "== "
    @bingo_board.each do |row|
      puts row[@columns.index(letter)]
    end
  end
  def show_board
    @columns.each do |letter|
      print " #{letter}  "
    end
    puts
    print "=====================" #I considered using .times do print "==" end but I think there's no reason to have the interpreter make different objects. May as well use one long object and conserve memory.
    puts
    @bingo_board.each do |row|
      puts
      print " #{row[0]} "    #Can I use .times iterator here?
      print " #{row[1]} "
      print " #{row[2]} "
      print " #{row[3]} "
      print " #{row[4]} "
      puts
    end
  end
end

#====== Release 4:  Refactored Solution ======



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

=begin ====== Release 6: Reflection ======
1. How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?



2. What are the benefits of using a class for this challenge?



3. How can you access coordinates in a nested array?



4. What methods did you use to access and modify the array?



5. Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?



6. How did you determine what should be an instance variable versus a local variable?



7. What do you feel is most improved in your refactored solution?



=end