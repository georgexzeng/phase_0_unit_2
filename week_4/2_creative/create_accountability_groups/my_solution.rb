# U2.W4: Create Accountability Groups


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:

# Input an array of first and last names of all the people in my cohort

# Output:

# Output an array of arrays, with each array containing four names, 
# with the last array containg 1-4 names

# Steps:

# 1. Take a list of folks in my cohort and turn the names into an array
# 2. Iterate the arrays into a group of four names
# 3. For the final group, if there's not enough people - that's fine
# 4. Output the groups as an array of arrays

# 3. Initial Solution

student_list=%w{
Ariel Olin
Alan Cohen
Alexander Le
Alexei Pesic
Anthony Ferragano
Audrey McGowan
Bruno Pasini
Chase Blokker
Dan Freed
Daniel Kim
Daniel Petrie
David Bragdon
Derek Johnson
Edward Kim
Eric Shemtov
Garrett Dalton
George Zeng
Irene Yu
John Cain
Joseph White
Justin Wagner
Kimberly Brewer
Mark Mcquillen
Max Lock
Patti Oneill
Ryan Storberg
Widny Stlouis
Wuang Qin
}
.each_slice(2).map{|student| "#{student[0]} #{student[1]}"}

def accountability_method(student_list)
	student_list.shuffle.each_slice(4).to_a
end

puts (accountability_method student_list).inspect


# This solution works - but it's just listing the students in order, is not creating
# a random list, and the list will be the same every time

# 4. Refactored Solution



# 1. DRIVER TESTS GO BELOW THIS LINE

# require_relative "my_solution"

# describe 'accountability_method' do
# 	let (:arrayA) {[]}
# 	let (:arrayB) {["First1 Last1", "First2 Last2"]}
# 	let (:arrayC) {["First1 Last1", "First2 Last2", "First3 Last3", "First4 Last4", "First5 Last5", "First6 Last6", "First7 Last7"]}

# 	it "is defined as a method" do
# 		defined?(accountability_method).should eq "method"
# 	end

# 	it "requires a single argument" do
# 		method(:total).arity.should eq 1
# 	end

# 	it "returns nothing for an empty array"
# 		accountability_method(arrayA).should eq []
# 	end

# 	it "returns one accountability group when less than 4 names"
# 		accountability_method(arrayA).should eq [["First1 Last1", "First2 Last2"]]
# 	end

# 	it "returns multiple accountability groups, including some that may not have 4 names"
# 		accountability_method(arrayA).should eq [["First 1 Last1", "First2 Last2", "First3 Last3", "First4 Last4"], ["First5 Last5", "First6 Last6", "First7 Last7"]]]
# 	end

# 5. Reflection 


