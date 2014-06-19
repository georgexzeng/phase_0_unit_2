# U2.W6: Drawer Debugger


# I worked on this challenge by with Sebastian Radloff.


# 2. Original Code

class Drawer
	attr_reader :contents
	# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end 

	def add_item (item)
		@contents << item
	end

	def remove_item(item = @contents.pop) #what is `#pop` doing?
		@contents.delete(item)
	end

	def dump  # what should this method return?
		puts "Your drawer is empty."
		@contents = []
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
end

class Silverware
	attr_reader :type
	# Are there any more methods needed in this class?

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end

	def eat
		puts "eating with the #{type}"
		@clean = false
	end

	def clean_silverware
		puts "cleaning the #{type}"
		@clean = true
	end

	def clean
		return @clean
	end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
# silverware_drawer.view_contents

silverware_drawer.remove_item
# silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

# silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

# silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?

fork2 = Silverware.new("fork2")
silverware_drawer.add_item(fork2)
fork2 = silverware_drawer.remove_item(fork2) #add some puts statements to help you trace through the code...
fork2.eat

#BONUS SECTION
puts fork2.clean

# DRIVER TESTS GO BELOW THIS LINE

# def assert
# 	raise "Assertion issue!" unless yield
# end

# fork1 = Silverware.new("fork")
# silverware_drawer1 = Drawer.new
# silverware_drawer1.add_item(fork1)

# assert {silverware_drawer1.view_contents.include?("The drawer contains:
# \n- fork") == true}

knife1 = Silverware.new("knife")
silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 

p "*"*50
items = ["knife", "spoon", "fork"]
items.each {|item| p silverware_drawer.view_contents.to_s.include?(item)}
p "*"*50

silverware_drawer.remove_item
# silverware_drawer.view_contents

p "*"*50
items = ["knife", "spoon"]
items.each {|item| p silverware_drawer.view_contents.to_s.include?(item)}
p "*"*50

sharp_knife = Silverware.new("sharp_knife")
silverware_drawer.add_item(sharp_knife)

p "*"*50
items = ["knife", "spoon", "sharp_knife"]
items.each {|item| p silverware_drawer.view_contents.to_s.include?(item)}
p "*"*50

# silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware 

p "*"*50
p removed_knife.clean == true
p "*"*50

# silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return?

p "|"*50
p silverware_drawer.contents == []
p "|"*50

fork2 = Silverware.new("fork2")
silverware_drawer.add_item(fork2)
fork2 = silverware_drawer.remove_item(fork2) #add some puts statements to help you trace through the code...
fork2.eat

p "|"*50
p fork2.clean == false
p "|"*50

# 5. Reflection 

<<-Reflection

Assert functions are terrible for driver codes.  Jokes aside, need to figure
out how to properly implement assert test functions

Reflection



