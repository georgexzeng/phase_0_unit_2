# U2.W4: Homework Cheater!


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:

# title, topic, date, thesis_statement, pronoun

# Output:

# The First Shogun
# Ieyasu Tokugawa was an important person in 1603. He did a lot. I want to learn more about him. 
# His most important contribution to history is that he founded the Tokugawa period, a peaceful 
# time that lasted over 200 years. Tokugawa's contribution is important.


# Steps:

1. create a simple skeleton statement in pseudocode that inserts the appropriate elements
2. insert title
3. insert topic
4. insert date of topic
5. insert thesis_statement
6. insert the pronoun of the subject as male or female
7. print the revised paragraph

# 3. Initial Solution




# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE

require_relative 'my_solution'

describe 'get_grade' do
  let(:arrayA) { [100,90,100,99,99]}
  let(:arrayB) { [80,90,80,89,98]}
  let(:arrayC) { [70,80,70,79]}
  let(:arrayD) { [60,67,70,63]}
  let(:arrayF) { [50,40,0,99,9]}
  
  it 'is defined as a method' do
    defined?(get_grade).should eq 'method'
  end
  it 'returns "A" when the average is >= 90' do
    get_grade(arrayA).should eq "A"
  end
  it 'returns "B" when the average is >= 80' do 
    get_grade(arrayB).should eq "B"
  end
  it 'returns "C" when the average is >= 70' do
    get_grade(arrayC).should eq "C"
  end
  it 'returns "D" when the average is >= 60' do
    get_grade(arrayD).should eq "D"
  end
  it 'returns "F" when the average is < 60' do
    get_grade(arrayF).should eq "F"
  end
  
end




# 5. Reflection 


