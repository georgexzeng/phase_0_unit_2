# U2.W6: Refactoring for Code Readability

# I worked on this challenge [by myself, with: ].


# Original Solution

#class CreditCard
#  def initialize(num) 
#    @num = num
#    unless num.to_s.length == 16 then
#      raise ArgumentError.new('Please insert 16 integers')
#    end
#  end
#
#  def double_method #rename double_method to double_alt_integers to clarify meaning.
#    array_num = @num.to_s.split(//).map{|chr| chr.to_i}
#    @new_array = Array.new #rename @new_array to @double_alt_array
#    index = 0
#    array_num.each do |num|
#      if (array_num.length-index) % 2 == 0
#        num *= 2
#      end
#      @new_array << num #change @new_array
#      index +=1
#    end
#    return @new_array #change @new_array
#  end
#
#  def sum_method #rename sum_method to sum_digits
#    @sum = @new_array.join.split(//).map{|chr| chr.to_i}.inject(:+)
#  end
#
#  def check_card
#    self.double_method #change double_method
#    self.sum_method #change sum_method
#    if @sum%10==0
#      true
#    else
#      false
#    end
#  end
#end

#card = CreditCard.new(1234512345123451)
#p card.check_card == false


# Refactored Solution
class CreditCard
  def initialize(num) 
    @num = num
    unless num.to_s.length == 16 then
      raise ArgumentError.new('Please insert 16 integers')
    end
  end

  def double_alt_integers 
    array_num = @num.to_s.split(//).map{|chr| chr.to_i}
    @double_alt_array = Array.new 
    index = 0
    array_num.each do |num|
      if (array_num.length-index) % 2 == 0
        num *= 2
      end
      @double_alt_array << num 
      index +=1
    end
    return @double_alt_array 
  end

  def sum_digits 
    @sum = @double_alt_array.join.split(//).map{|chr| chr.to_i}.inject(:+)
  end

  def check_card
    self.double_alt_integers 
    self.sum_digits 
    if @sum%10==0
      true
    else
      false
    end
  end
end

# Reflection 

<<-Reflection
Not much to refactor here - but learned a great deal about the logic behind 
assertion testing.  Need to rewatch the lecture (missed a decent amount
due to lag last time) to better figure out the background behind assertion testing
Reflection
