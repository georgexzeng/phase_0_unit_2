# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  


# 1. Pseudocode

# What is the input?

# Input is a random number

# What is the output? (i.e. What should the code return?)

# Output is a string with commas separating every three integer places

# If random number < 1,000 then returns random number
# If random number >=1,000 then returns string inserting a comma every three places


# What are the steps needed to solve the problem?

# 1. If random number < 1,000 then return random number
# 2. If random number >=1,000 then returns string
# 3. Insert a comma after last 3 places of the string
# 4. Insert a comma after the last 1*4+3 plages of the string if it exists
# 	It not return string as is
# 5. Insert a comma after the last 2*4+3 places of the string
# 	If not return string as is
# 6. Loop this until loop breaks


# 2. Initial Solution

def separate_comma my_number
	if my_number < 1000 then my_number.to_s
	else my_number.to_s.reverse!.scan(/.{1,3}/).join(',').reverse!
	end
end

puts separate_comma(10)


# 3. Refactored Solution



# 4. Reflection 

# There's probably a more efficient way of doing this, but I basicallly implemented
# a scan solution every 3 spaces, after reversing a string in order to count from the end.
# In the end, I reversed the string again to have the string face the right way.
