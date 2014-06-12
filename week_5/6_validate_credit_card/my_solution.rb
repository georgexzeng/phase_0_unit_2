# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Matt Chan.

# 2. Pseudocode

# Input: 16 integers
# Output: boolean true or false
# Steps:

<<-Steps
1. convert the integer into an array of numbers
2. mod 2 the index of the array and for each mod 2 index, destructively double the value
3. mod 2 the index of the array and for each mod 2 index, destrucitvely add the digits of the value together if they're >=10
4. add all the values of the array together 
5. mod 10

Steps


# 3. Initial Solution

class CreditCard
	def initialize(num)
		@num = num
		unless num.to_s.length == 16 then
			raise ArgumentError.new('Please insert 16 integers')
		end
	end

	def double_method
		array_num = @num.to_s.split(//).map{|chr| chr.to_i}
		@new_array = Array.new
		index = 0
		array_num.each do |num|
			if (array_num.length-index) % 2 == 0
				num *= 2
			end
			@new_array << num
			index +=1
		end
		return @new_array
	end

	def sum_method
		@sum = @new_array.join.split(//).map{|chr| chr.to_i}.inject(:+)
	end

	def check_card
		if @sum%10==0
			true
		else
			false
		end
	end
end

card = CreditCard.new(1234512345123451)
card.double_method
card.sum_method
p card.check_card == false

# Don't forget to check on intialization for a card length
# of exactly 16 digits


# 4. Refactored Solution



# 1. DRIVER TESTS GO BELOW THIS LINE

false_card=CreditCard.new(1234512345123522)
false_card.double_method
false_card.sum_method
p false_card.check_card == false
true_card = CreditCard.new(4408041234567893)
true_card.double_method
true_card.sum_method
p true_card.check_card==true

# 5. Reflection 

<<-Reflection
Ended up coming up with a way of making this solution work - but probably not the
most efficient implementation of this solution.  Should think of refactoring

Reflection


