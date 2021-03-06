# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

<<-Pseudocode

The above code is specifying that for assert with a block
quote, one should raise "Assertion failed!" unless 
the assertion is true.  The assertion is comparing
whether the variable name is equivalent to a constant.

In the above example, the first assert tests whether
name = "bettysue" == "bettysue".  It is, so no
Assertion failed is raised.  

In the second example, because 
name = "billybob" != "bettysue", an "Assertion failed!"
error is raised. 

Pseudocode

# 3. Copy your selected challenge here

# false_card=CreditCard.new(1234512345123522)
# p false_card.check_card == false
# true_card = CreditCard.new(4408041234567893)
# p true_card.check_card==true


# 4. Convert your driver test code from that challenge into Assert Statements
# require_relative 'my_solution_cc'

require_relative 'my_solution_cc'

def assert actual, expected, message
	display message
	puts actual == expected || display_error(actual, expected)
end

def display message
	puts "*" * 50
	puts message
	puts "*" * 50
end

def display_error actual, expected
	"ERROR!  Expected #{expected} but got #{actual} instead."
end

false_card=CreditCard.new(1234512345123522).check_card
true_card = CreditCard.new(4408041234567893).check_card

assert false_card, false, "false cards check out as false"
assert true_card, true, "true cards check out as true"

# assert {my_card_number.check_card}

# 5. Reflection

<<-Reflection

Assertions seem like a nice and a more efficient way
of testing code - instead of having to write two lines
for each test; in addition assertion testing stops
code where it's at and immediately flags for the engineer
to start coding and figuring out what needs to be done

Reflection