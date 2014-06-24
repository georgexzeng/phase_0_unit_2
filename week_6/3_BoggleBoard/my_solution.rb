# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.


# 2. Pseudocode



# 3. Initial Solution
class BoggleBoard

  def initialize(board)
  	@board = board
  end 

  # def create_word my_letters #creates a word out of coordinates?
  #   @board.map{|my_letters| p my_letters[0].to_i}
  # end

  def identify (coords)#creates a word out of coordinates
    return @board[coords[0]][coords[1]]
  end

  def create_word(coords)
    coords.inject('') { |word, char_coords| word + identify(char_coords) }
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

# p boggle_board.get_row(0)
# p boggle_board.get_column(0)

# 4. Refactored Solution



# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:


# implement tests for each of the methods here:

my_letters = [[1,2], [1,1], [2,1], [3,2]]

p boggle_board.create_word my_letters

# p boggle_board.create_word(1, 2) == "d"
# p boggle_board.create_word(1, 1) == "o"
# p boggle_board.create_word(2, 1) == "c"
# p boggle_board.create_word(3, 2) == "k"
p boggle_board.get_row(0) == ["b", "r", "a", "e"]
p boggle_board.get_column(0) == ["b", "i", "e", "t"]

# print boggle_board.get_row(0).to_s
# print boggle_board.get_row(1).to_s
# print boggle_board.get_row(2).to_s
# print boggle_board.get_row(3).to_s
# print boggle_board.get_column(0).to_s
# print boggle_board.get_column(1).to_s
# print boggle_board.get_column(2).to_s
# print boggle_board.get_column(3).to_s

# 5. Reflection 

<<-Reflection
Directions for this section were not super clear - but think I
accomplished the objectives
Reflection