# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself Matt Chan.

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

<<-INITIAL
1. input array position for outter array
2. return (the appropriate inner nested array)
INITIAL

# Initial Solution

class Array
	def get_row(row)
	    return self[row]
	end
end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE

p boggle_board.get_row(1)==["i", "o", "d", "t"]
p boggle_board.get_row(1)

# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

<<-INITIAL
1. Take the column input
2. Extract or pick the appropriate element in each nested array
3. Push each one of those elements in the nested array into a new array
4. Return the new array
INITIAL

# Initial Solution

# class Array
# 	def get_col(col)
# 		column_array=[]
# 		self.each{|x|column_array<<x[col]}
# 		return column_array
# 	end
# end

# Refactored Solution

class Array
	def get_col(col)
		self.map{|x|x[col]}
	end
end

# DRIVER TESTS GO BELOW THIS LINE

p boggle_board.get_col(1)==["r", "o", "c", "a"]
p boggle_board.get_col(1)

# Reflection 

<<-Reflection
Still need to get better at prioritizing and reading efficient code
Next steps inclue working on Ruby Koans to improve this
Reflection



