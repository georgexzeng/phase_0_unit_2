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


# 4. Refactored Solution



# 1. DRIVER TESTS GO BELOW THIS LINE

# require_relative "my_solution"

# describe 'accountability_method' do
# 	let (:array_1) {[]}
# 	let (:array_2) {["First1 Last1", "First2 Last2"]}
# 	let (:array_3) {["First1 Last1", "First2 Last2", "First3 Last3", "First4 Last4", "First5 Last5", "First6 Last6", "First7 Last7"]}

# 	it "is defined as a method" do
# 		defined?(accountability_method).should eq "method"
# 	end

# 	it "requires a single argument" do
# 		method(:accountability_method).arity.should eq 1
# 	end

# 	it "returns nothing for an empty array" do
# 		accountability_method(array_1).length.should eq 0
# 	end

# 	it "returns one accountability group when less than 4 names" do
# 		accountability_method(array_2).length.should eq 1
# 	end

# 	it "returns multiple accountability groups, including some that may not have 4 names" do
# 		accountability_method(array_3).length.should eq 2
# 	end
# end

# 5. Reflection 

# Wow this test took me a while to finish.  The key gist of it is that I'm still not super
# comfrotable working with rspec; in addition, I needed some time working out the
# randomization and array-ization of the list of people in my class. 

# Going forward - think I'll use a combination of tutorials and class notes to
# get through challenges one by one, instead of jumping around, which has been my
# modus operandi to date.  Focused time working through each one of these challenges
# seems to be the best bet to finish them in a timely manner.