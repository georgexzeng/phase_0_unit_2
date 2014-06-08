# U2.W4: Refactor Cipher Solution


# I worked on this challenge by myself.


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a  # This is just turning the alphabet from a to z into an array
    cipher = Hash[alphabet.zip(alphabet.rotate(4))] #This is pairing up a Hash with the letters of the alphabets being the keys and the alphabet rotated or shifted four places being the values
    spaces = ["@", "#", "$", "%", "^", "&", "*"] #This is setting a space array that includes all of these symbols
    
    original_sentence = sentence.downcase #Just lowercaing the original sentence
    encoded_sentence = [] # Encoded sentence starting off with nothing... 
    original_sentence.each_char do |element| # Takes the original sentence and turns it into an array, with each character an element in the array
      if cipher.include?(element) #If cipher has the character..
        encoded_sentence << cipher[element] #Then it adds the encoded character to the encoded sentence
      elsif element == ' ' #Else if the element is a space...
        encoded_sentence << spaces.sample #It adds a random character from the spaces array
      else 
        encoded_sentence << element #Other than that, it's just passing the character through
      end
     end
    
    return encoded_sentence.join #returns the string and concatenates them into one block of text
end


# Questions:
# 1. What is the .to_a method doing?

# Converting each letter of the alphabet to an array

# 2. How does the rotate method work? What does it work on?

# It shifts the letters of the alphabet back by the number of spaes it was specified.
# It works on letters, but also works on numbers

# 3. What is `each_char` doing?

# each_char is separating a sentence and turning it into an array, with each character
# being a member of that array

# 4. What does `sample` do?

# It's randomly picking a character from the spaces array

# 5. Are there any other methods you want to understand better?

# 'join' concatenates a bunch of individual letters and returns them in a block

# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?

# I think this code looks a lot better.  It's a more elegant breakdown that 
# requires less lines.  I think one thing I did was use ASCII characters instead
# of the rotate method - I think that could have actually worked a lot better.

# 7. Is this good code? What makes it good? What makes it bad?

# I think this is very good code - it's probably the simplest most elegant way
# of tackling this problem.  


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")


# No - it doesn't.  THe spaces in the coded message are random and come away
# with different characters every time. 


# 5. Reflection 

# This makes me more thoughtful about both writing and reading code.  In order to 
# properly diagnose and understand code properly, I have to go through and understand
# each method in the code.  I haven't always done that properly, and it's something
# I will do going forward.  
