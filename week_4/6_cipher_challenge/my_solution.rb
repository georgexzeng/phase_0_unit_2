# U2.W4: Cipher Challenge


# I worked on this challenge with: .



# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  # the above line takes a coded_message, turns all the characters into lowercase and then passes each character as an entry
  # into an array
  decoded_sentence = []
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
            "g" => "c",   
            "h" => "d",   #Broadly, we can find a way to turn the characters we're decoding into ASCII characters and then just
            "i" => "e",   #add 4 to each ASCII character and return the additional character
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
  def new_cipher(input)
    
            
  input.each do |x| # What is #each doing here? 
    #Each is basically running through each 
    #letter of the undeciphered code, so we can undecipher them one by one
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    #This is assigned false from the outset so you can actually proceed down the logic of the
    #algorithim and provides a break when a cipher match happens
    cipher.each_key do |y| # What is #each_key doing here? 
    #Each_key here is taking a y value for each undeciphered key and doing the 
    #following action
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
      #x is one letter in the undeciphered message; y is the key leading to the 
      #deciphered message
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here?
        #It's breaking here to finish the loop and start looping back through the
        #next undeciphered key.
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
      #(0..9).to_a just turns the numbers into an element of an array
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for?
    #What this says is that if you don't get have an instance of undeciphered code==key
    #then you return back saying found_match is equal to false.
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help.
  #This is finding the subsequent numbers in the code and passing them through the following method

    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
    #this is dividing the number above by 100
  end  
  return decoded_sentence # What is this returning?        
  #This is returning the decoded sentence and dividing each numerical value by 100
end

# Your Refactored Solution




# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")=="our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")=="our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")=="if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")=="next stop: south korea, then japan, then the world!"

p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")=="can somebody just get me 100 bags of cool ranch doritos?"

# Reflection
 