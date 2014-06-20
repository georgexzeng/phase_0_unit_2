# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard
  def initialize(board)
  	@board = board
  end

  def get_row(row)
    @row = row
  	return @board[row]
  end

  def get_column(column)
    @column = column
  	@board.map{|x|x[column]}
  end
 
end
 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)

p boggle_board.get_row(0)
p boggle_board.get_column(0)

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:

  def create_word (row, column)#creates a word out of coordinates?
    return boggle_board[row]


# implement tests for each of the methods here:




# 5. Reflection 