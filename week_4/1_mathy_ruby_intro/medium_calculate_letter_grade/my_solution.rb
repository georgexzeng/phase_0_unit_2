# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and 
# include it in this file. Also make sure everything that isn't code
# is commented in the file.  

# I worked on this challenge by myself.

# 1. Pseudocode

# What is the input?

# The input is an array of numbers, or a list of grades from a student

# What is the output? (i.e. What should the code return?)

# The output is one string - that denotes the letter grade for that student

# What are the steps needed to solve the problem?

# First we need to add the numbers together
# +we can do this through an injection that defines an initial result of zero and adds
# 	additional elements in that are the individual numbers in the student's grade array

# Next, we find the average of the grades
# +next we divide by the number of grades that are there in order to find the average

<<<<<<< HEAD
# Next, we find what grade letter corresponds to those aveages
# +lastly, we can use an if / elsif / else condition to specify which grades a student's
# 	average grade corresponds to

# 2. Initial Solution

def get_grade(array)
	average_grade = array.inject{|sum_to_date, array_addition| sum_to_date+array_addition}/array.length
	if average_grade>=90 then "A"
	elsif average_grade>=80 then "B"
	elsif average_grade>=70 then "C"
	elsif average_grade>=60 then "D"
	else "F"
	end
end

# 3. Refactored Solution

def get_grade(array)
	average_grade = array.inject{|sum_to_date, array_addition| sum_to_date+array_addition}/array.length
	if average_grade>=90 then "A"
	elsif average_grade>=80 then "B"
	elsif average_grade>=70 then "C"
	elsif average_grade>=60 then "D"
	else "F"
	end
end

# 4. Reflection 

# Again, enjoyed the testing process - becoming better at writing tighter code 
# through the refactoring process, so I see how it can be very valuable.
