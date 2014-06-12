# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:
# an array of strings

# Output:
# sides - number of sides by counting the array of strings
# roll - returns one of the strings in the array

# Steps:
# 1. initalize a new die with an array called labels, which contains an array of strings
# 2. sides = lables.length
# 3. roll = one random string chosen from the array


# 3. Initial Solution

# class Die
#   def initialize(labels)
#   	if labels.length>0
#   		@labels=labels
#   	else 
#   		raise ArgumentError.new
#   	end
#   end

#   def sides
#   	@sides = @labels.length
#   end

#   def roll
#   	@roll = @labels.sample
#   end
# end

# die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
# puts die
# puts die.sides # still returns the number of sides, in this case 6
# puts die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly


# 4. Refactored Solution


class Die
  def initialize(labels)
  	if labels.length>0
  		@labels=labels
  	else 
  		raise ArgumentError.new
  	end
  end

  def sides
  	@sides = @labels.length
  end

  def roll
  	@roll = @labels.sample
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
puts die
puts die.sides # still returns the number of sides, in this case 6
puts die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly


# 1. DRIVER TESTS GO BELOW THIS LINE

# 1. for #initialize - expect a single argument

# expect(Die.instance_method(:initialize).arity).to eq 1

# 2. for #initalize - raises an ArgumentError if list of labels is empty

# expect {
#         Die.new([])
#       }.to raise_error(ArgumentError)

# 3. for #initialize - sides can't take a zero argument

# expect(Die.instance_method(:sides).arity).to be_zero

# 4. for #sides - returns the number of sides given on initalization

# length = 1 + rand(100)
# sides = Array.new(length) { 'A' }
# die = Die.new(sides)

# expect(die.sides).to eq length

# 5. for #roll - expects no zero arguments

# expect(Die.instance_method(:roll).arity).to be_zero

# 6. for #roll - returns a single letter if one label is passed in

# random_letter = ('A'..'Z').to_a[rand(26)]
# die = Die.new([random_letter])

# expect(Array.new(100) { die.roll }).to eq Array.new(100) { random_letter }

# 7. for #roll - returns every possible letter for a sufficiently large number of rolls 

# possible_values = ('A'..'Z').to_a.shuffle.first(15)

# die = Die.new(possible_values)

# output = Array.new(10000) { die.roll }.uniq

# expect(output.sort).to eq possible_values.sort

# 5. Reflection 

# Pretty easy to do as well, given a good understanding of classes.  Still not 100% sure of the necessity of 
# specifying equality to @label with label; but actively researching that...
