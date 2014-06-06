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

# 1. create a simple skeleton statement in pseudocode that inserts the appropriate elements
# 2. insert title
# 3. insert topic
# 4. insert date of topic
# 5. insert thesis_statement
# 6. insert the pronoun of the subject as male or female
# 7. print the revised paragraph

# 3. Initial Solution

def essay_writer title, topic, date, thesis_statement, pronoun
  first_name=topic.split(' ').last 
  last_name=topic.split(' ').first
  if pronoun == "male" then pronoun_first = "He"
  else pronoun_first = "She"
  end
  if pronoun == "male" then pronoun_second = "him"
  else pronoun_second = "her"
  end
  return "#{title}
  #{first_name} #{last_name} was an important person in #{date}. #{pronoun_first} did a lot. I want to learn more about #{pronoun_second}. #{thesis_statement} #{last_name}'s contribution is important."
end

title1 = "The First Shogun"
topic1 = "Tokugawa Ieyasu"
date1 = 1603
thesis_statement1 = "His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years."
pronoun1 = "male"

puts essay_writer(title1, topic1, date1, thesis_statement1, pronoun1).inspect

puts "The First Shogun
  Ieyasu Tokugawa was an important person in 1603. He did a lot. I want to learn more about him. His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years. Tokugawa's contribution is important.".inspect

# The First Shogun
# Ieyasu Tokugawa was an important person in 1603. He did a lot. I want to learn more about him. 
# His most important contribution to history is that he founded the Tokugawa period, a peaceful 
# time that lasted over 200 years. Tokugawa's contribution is important.


# 4. Refactored Solution


# 1. DRIVER TESTS GO BELOW THIS LINE

# require_relative "my_solution"

# describe 'accountability_method' do
#   let (:title1) {"The First Shogun"}
#   let (:topic1) {"Tokugawa Ieyasu"}
#   let (:date1) {1603}
#   let (:thesis_statement1) {"His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years."}
#   let (:pronoun1) {"male"}

#   it "is defined as a method" do
#     defined?(essay_writer).should eq "method"
#   end

#   it "requires five arguments" do
#     method(:essay_writer).arity.should eq 5
#   end

#   it "original example" do
#     essay_writer(title1, topic1, date1, thesis_statement1, pronoun1).should eq "The First Shogun
#   Ieyasu Tokugawa was an important person in 1603. He did a lot. I want to learn more about him. His most important contribution to history is that he founded the Tokugawa period, a peaceful time that lasted over 200 years. Tokugawa's contribution is important."
#   end

# end

# 5. Reflection 

# Starting to get the hang of writing driver tests - but it took a while to get around to 
# understanding the proper way of representing variables
# Still need to think more about the best way to refactor these solutions