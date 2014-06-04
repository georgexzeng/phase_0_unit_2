# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
The input is an array of numbers for the total method
The input is an array of strings for the sentence_maker method

# What is the output? (i.e. What should the code return?)
The output is one number - their total or the sum for the total method
The output is one string - a oncatenated sentence for the sentence_maker method

# What are the steps needed to solve the problem?

For the total method - 
First we need fo create a variable equal to zero (a my_sum variable or something of that sort)
Then we neeed to add each number in the array to the variable
Then we need to output the final number as the sum

For the sentence_maker method - 
First we need to have an empty string - create a variable called my_sentence or something of that sort
Then we need to add each string in the array to the varialbe, one at a time
Then we need to output the final string as a sentence


# 2. Initial Solution

def total(Array)
	my_sum = 0
	Array.length.times do
		my_sum+=1
	end
	return my_sum
end

def sentence_maker(Array2)
	my_sentence = 0
	Array2.length.times do
		my_sentence+=1
	end
	return my_sentence
end

# 3. Refactored Solution



# 4. Reflection 