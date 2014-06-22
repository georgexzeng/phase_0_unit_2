# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself.

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode

<<-Pseudocode
1. Create a new class called PezDispenser
2. Let class be able to initialize new PezDispenser(flavors)
	+requires a whole bunch of flavors, with each flavor represneting
	a pez
	+outputs this as an array
3. Create class method see_all_pez
	+returns all the pez as an array
4. Create class method add_pez
	+adds a pez flavor to the end of an array
5. Create class method pez_count
	+counts the number of pez in the array and returns that number
6. Create class method get_pez
	+takes the number one pez and removes it from the array

Pseudocode

# 3. Initial Solution

class PezDispenser
	attr_accessor :flavors
	def initialize(flavors)
		@flavors = flavors
	end

	def see_all_pez 
		@flavors
	end

	def add_pez(new_pez)
		@flavors<<new_pez
	end

	def pez_count
		@flavors.length
	end

	def get_pez
		@flavors.shift
	end
end
 
# 4. Refactored Solution



# 1. DRIVER TESTS GO BELOW THIS LINE

def assert actual, expected, message
	display message
	puts actual == expected || display_error(actual, expected)
end

def display message
	p "*"*50
	puts message
	p "*"*50
end

def display_error actual, expected
	p "ERROR! Expected #{expected} but got #{actual} instead!"
end

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
assert super_mario.see_all_pez, super_mario.flavors, "Testing that we can see all pez flavors"
puts "Adding a purple pez."
super_mario.add_pez("purple")  # mmmmm, purple flavor
assert super_mario.flavors[super_mario.flavors.length-1], "purple", "Testing the add method worked correctly!"
puts "Now you have #{super_mario.pez_count} pez!"
assert super_mario.pez_count, 10, "Testing that the count method works correctly!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
assert super_mario.flavors[0], super_mario.get_pez, "Testing that get pez works correctly!"
puts "Now you have #{super_mario.pez_count} pez!"

# 5. Reflection 

<<-Reflection
Excellent exercise to solidify my working with asser tests and class more
Reflection