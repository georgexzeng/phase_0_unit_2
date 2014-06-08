# U2.W4: Pad an Array

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge with Clayton Jordan.

# 1. Pseudocode

# What is the input?

#Array of non-negative integers

# What is the output? (i.e. What should the code return?)

# A new array that contains a minimum number of values and supplements the array with additional padded
# values if the array length is less than the specified value

# What are the steps needed to solve the problem?

# 1. Take the pad number value
# 2. Compare that with the length of the array
# 3. If array.length - pad.number = positive number, then add the pad value to the end of the array in 
# an iterative loop equal to the positive number difference
# 4. Return the new array
# 5. If array.length - pad.number =< 0, then just return the original array

# 2. Initial Solution

# class Array
#   def pad(pad_num, pad_value)
#     pad_decider = pad_num - self.length
#     if pad_decider > 0 then 
#       pad_decider.times do pad_value
#         self.push(pad_value)
#       end
#     else 
#       self
#     end
#     self
#   end
# end

# 3. Refactored Solution

class Array
  def pad!(pad_num, pad_value=nil)
    pad_decider = pad_num - self.length
    if pad_decider > 0
      if pad_value != nil
        pad_decider.times do
        self.push(pad_value)
        end
      else 
        pad_decider.times do
        self.push(nil)
        end
      end
    else 
      self
    end
    self
  end
  def pad(pad_num, pad_value=nil)
    array_clone=self.clone
    pad_decider = pad_num - self.length
    if pad_decider > 0
      if pad_value != nil
        pad_decider.times do
        array_clone.push(pad_value)
        end
      else 
        pad_decider.times do
        array_clone.push(nil)
        end
      end
    else 
      array_clone
    end
    array_clone
  end
end

my_array = [1,2,3]*10
puts my_array.pad(10).inspect

# 4. Reflection 

