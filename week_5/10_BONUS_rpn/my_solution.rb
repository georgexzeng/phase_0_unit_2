# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: 
# - evaluate method takes a string of numbers and operators
# 
# Output:
# - evaluate will output the result of the calculation
#
# Steps:
# - split string into array
# - count from left
# - find first evaluator (+,-, *, /)
# - take two numbers to the left of evaluator
# - operate with evaluator
# - replace two numbers and operator with result

# 3. Initial Solution

# class RPNCalculator
#   def evaluate(input_numbers)
#     my_array = input_numbers.split(' ')
#     results = []
#     while my_array.length > 1
#       my_array.each do |item|
#         p item + "\n\n"
#         if item.match(/(\*|\+|\-(?!\d))/)
#           ahead1 = my_array[my_array.index(item) - 1]
#           ahead2 = my_array[my_array.index(item) - 2]
#           my_array[my_array.index(ahead2)] = ahead2.to_i.public_send(item, ahead1.to_i).to_s
#           my_array.delete_at(my_array.index(item))
#           my_array.delete_at(my_array.index(ahead1))
#         end
#       end
#     end
#     my_array[0].to_i
#   end
# end

# 4. Refactored Solution

class RPNCalculator
  def evaluate(input_numbers)
    my_array = input_numbers.split(' ')
    while my_array.length > 1
      my_array.each do |item|
        if item.match(/(\*|\+|\-(?!\d))/)
          ahead1 = my_array[my_array.index(item) - 1]
          ahead2 = my_array[my_array.index(item) - 2]
          my_array[my_array.index(ahead2)] = ahead2.to_i.public_send(item, ahead1.to_i).to_s
          my_array.delete_at(my_array.index(item))
          my_array.delete_at(my_array.index(ahead1))
        end
      end
    end
    my_array[0].to_i
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

puts RPNCalculator.instance_method(:evaluate).arity == 1

rpn = RPNCalculator.new()
p rpn.evaluate('0') == 0
p rpn.evaluate('-1') == -1
p rpn.evaluate('1 1 +') == 2
p rpn.evaluate('1 -1 +') == 0
p rpn.evaluate('2 2 *') == 4
p rpn.evaluate('5 10 -') == -5
p rpn.evaluate('1 2 3 4 + + +') == 1 + 2 + 3 + 4
p rpn.evaluate('1 2 + 3 4 + *') == (2 + 1) * (3 + 4)
p rpn.evaluate('20 10 5 4 + * -') ==  20 - ((5 + 4) * 10)

a, b, c = Array.new(3) {rand(100)}
p rpn.evaluate("#{a} #{b} - #{c} *") == (a-b)*c


# 5. Reflection 
