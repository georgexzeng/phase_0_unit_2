# U2.W4: Review and Refactor: Pad an Array

# I worked on this challenge by myself.

# 1. First Person's solution I liked
#    What I learned from this solution

# Matt's destructive solution is the shortest and most elegant implementation of the
# solution that I've seen to date

# His non-destructive solution also tackles the problem in a very different way
# from mine, by using a placeholder array. 

# Copy solution here:

# # 1. Pseudocode

# # What is the input?
# # What is the output? (i.e. What should the code return?)
# # What are the steps needed to solve the problem?

# # declare within class Array
# #    define method pad (min_size, pad_value=nil)
# #        set result to copy of self
# #        set times of padding = min_size - result.length
# #        return result of self.length less than min_size
# #        if pad_value is nil
# #           pad.times append nil to result
# #        else
# #           pad.times append pad_value to result
# #        end if
# #     return result
# #    end define
# # end class


# # 2. Initial Solution
# #class Array
# #  def pad!(number,padding = nil)
# #    if number <= self.length
# #      return self
# #    else
# #        while number > self.length
# #          self.push(padding)
# #        end
# #      return self
# #    end
# #  end
# #

# #  def pad(number,padding = nil)
# #    array = Array.new
# #    element_counter = 0
# #    while array.length != self.length
# #      array.push(self[element_counter])
# #      element_counter += 1
# #    end
# #      while number > array.length
# #        array.push(padding)
# #      end
# #      return array
# #  end
# #end

# 3. Refactored Solution

# class Array
#   def pad!(number,padding = nil)
#       while number > self.length
#         self.push(padding)
#       end
#       return self
#   end
  
#   def pad(number,padding = nil)
#   #Creating a placeholder array with same elements of self array.
#     placeholder = Array.new
#     element_counter = 0
#     while placeholder.length != self.length
#       placeholder.push(self[element_counter])
#       element_counter += 1
#     end
#    #if placeholder array doesn't have same number of elements as defined by number, add padding 
#       while number > placeholder.length
#         placeholder.push(padding)
#       end
#       return placeholder
#   end
# end

# 2. Second Person's solution I liked
#    What I learned from this solution


# Copy solution here:

# # 1. Pseudocode

# # for the Array class, 
# 	# define a method called pad, accepting two paramaters: times and with. with is set to nil on default
# 		# create a variable called new array, equal to self
# 		# if times is negative or 0, return the array
# 		# 'times'.times, shove 'with' into the back of the array	
# 		# return new array
# 	# define a method called pad!, accepting two paramaters: times and with. with is set to nil on default
# 		# if times is negative or 0, return self
# 		# 'times'.times, shove 'with' into the back of self
# 		# return self


# # 2. Initial Solution
# <<-Initial

# class Array
# 	def pad(times, with=nil)
# 		new_array = Array.new(self)
# 		return new_array if times <= self.length
# 		(times-self.length).times {new_array << with}
# 		new_array
# 	end
# 	def pad!(times, with=nil)
# 		return self if times <= self.length
# 		times.times {self << with}
# 		self
# 	end
# end

# Initial


# # 3. Refactored Solution
# class Array
# 	def pad(places, with=nil)
# 		return self + Array.new(places - self.length, with) unless places <= self.length
# 		Array.new(self)
# 	end
# 	def pad!(places, with=nil)
# 		(places - self.length).times {self << with} 
# 		self
# 	end
# end


# 3. My original solution:

# class Array

#   def pad!(pad_num, pad_value=nil)
#   	pad_decider = pad_num - self.length
#   	pad_decider.times do
#   		self.push(pad_value)
#   	end
#   	self
#   end

#   def pad(pad_num, pad_value=nil)
#   	array_clone=self.clone
#   	pad_decider = pad_num - self.length
#   	pad_decider.times do
#   		array_clone.push(pad_value)
#   	end
#   	array_clone
#   	end
#   end

# This wasn't my original solution - this is my refactoring my original solution
# In section 4 of this exercise, I pick the most efficient elegant way of writing
# the code possible, sometimes, completely redoing the way I wrote the code from
# scratch.  I think in general, it'll be good practice for me to do this every
# week going forward.  I can come up with code/solutions in my own sloppy way
# but the only way I'll become much better is by also reading and learning from
# other people's code. 

# 4. My refactored solution:

class Array

  def pad!(pad_num, pad_value=nil)
    (pad_num-self.length).times{self<<pad_value}
    self
  end

  def pad(pad_num, pad_value=nil)
    return self + Array.new(pad_num-self.length, pad_value) unless pad_num<=self.length
    Array.new(self)
  end
  
end

# 5. Reflection
# Truly humbled and impressed that some people in my class were able to get to the
# same results as me in a fraction of the number of lines of code.  Lots to learn
# about coding efficiency going forward.  Think it'll be good practice to look over
# my classmate's code on a regular basis going forward.

