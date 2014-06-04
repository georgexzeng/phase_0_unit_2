# U2.W4: Add it up!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?
# The input is an array of numbers for the total method
# The input is an array of strings for the sentence_maker method

# What is the output? (i.e. What should the code return?)
# The output is one number - their total or the sum for the total method
# The output is one string - a oncatenated sentence for the sentence_maker method

# What are the steps needed to solve the problem?

# For the total method - 
# First we need fo create a variable equal to zero (a my_sum variable or something of that sort)
# Then we neeed to add each number in the array to the variable
# Then we need to output the final number as the sum

# For the sentence_maker method - 
# First we need to have an empty string - create a variable called my_sentence or something of that sort
# Then we need to add each string in the array to the varialbe, one at a time
# For the first letter, we have to uppercase it
# For the last letter, we have to append a period at the end
# Then we need to output the final string as a sentence


# 2. Initial Solution

# def total(array)
# 	my_sum = 0
# 	array.length.times do |i|
# 		my_sum+=array[i]
# 	end
# 	my_sum
# end

# def sentence_maker(array2)
# 	my_sentence = array2[0].to_s
# 	array2.length.times do |i|
# 		my_sentence=my_sentence + " " + array2[i+1].to_s
# 	end
# 	my_sentence=my_sentence.capitalize[0..-2]+"."
# 	return my_sentence
# end

# 3. Refactored Solution

def total(array)
	array.inject{|result, element|result+element}
end

def sentence_maker(array2)
	my_sentence = array2.inject{|my_sentence, word|my_sentence + " "+word.to_s}.capitalize+"."
end

# 4. Reflection 

# I really enjoyed this exercise.  Rspec is just another way of testing the exercises that I
# already do manually - but it's nice to have a program to do this for you automatically.
