require_relative 'refactoring_assert'
require_relative 'my_solution'

puts "Created a new false card"
false_card=CreditCard.new(1234512345123522)
assert_class false_card.class, CreditCard
puts "False card should equal false"
assert_check_card false_card.check_card, false

puts "Created a new true card"
true_card = CreditCard.new(4408041234567893)
assert_class true_card.class, CreditCard
puts "True card should equal true"
assert_check_card true_card.check_card, true