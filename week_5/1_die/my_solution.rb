# U2.W5: Die Class 1: Numeric


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:

# Input number of sides


# Output:

# Output stating the number of sides
# Value of the roll


# Steps:

# Define an initailize statement to initalize with a number of unique_rolls
# Define a sides method to specify number of sides
# Define a roll method to specify what number is rolled


# 3. Initial Solution

# class Die

#   def initialize(number)
#   	if number<=0 
#   		raise ArgumentError.new
#   	else
#   		@number=number
#   	end
#   end

#   def sides
#   	@number
#   end
  
#   def roll
#     @roll = rand(@number)+1
#   end

# end

# puts die = Die.new(6)
# puts die.sides # returns 6
# puts die.roll # returns a random number between 1 and 6


# 4. Refactored Solution


class Die

  def initialize(number)
  	if number<=0 
  		raise ArgumentError.new
  	else
  		@number=number
  	end
  end

  def sides
  	@number
  end
  
  def roll
    @roll = rand(@number)+1
  end

end

puts die = Die.new(6)
puts die.sides # returns 6
puts die.roll # returns a random number between 1 and 6

# 1. DRIVER TESTS GO BELOW THIS LINE

# 1. #initalize has a single argument
# expect(Die.instance_method(:initialize).arity).to eq 1
    
# 2. argument error can't be less than 1

# expect {
#         Die.new(0)
#       }.to raise_error(ArgumentError)

# expect {
#         Die.new(-1)
#       }.to raise_error(ArgumentError)

# 3. expects no arguments to be zero

# expect(Die.instance_method(:sides).arity).to be_zero

# 4. returns the number of sides given on initialization

# sides = rand(800)
# die = Die.new(sides)

# 5. returns a random number between 1 and the number of sides

# sides = 100 + rand(100)
# die = Die.new(sides)

# possible_values = (1..sides).to_a
# unique_rolls = Array.new(20000) { die.roll }.uniq.sort

# expect(unique_rolls).to eq possible_values

# 5. Reflection 

# This was a rather simple example after reviewing the well-grounded Rubyist section on classes


