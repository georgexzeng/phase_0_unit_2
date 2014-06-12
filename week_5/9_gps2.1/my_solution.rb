# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: 

# Joseph White

# Our Refactored Solution

def bakery_num(num_of_people, fav_food) #all code is within this method

  servings = {"pie" => 8, "cake" => 6, "cookie" => 1} # hash listing food items and servings per item
  pies, cakes, cookies = 0, 0, 0

  unless servings.has_key?(fav_food)
    raise ArgumentError.new("You can't make that food") #raises error if fav_food didn't match pie, cake or cookie
  end

  if num_of_people % servings[fav_food] == 0
    fav_food_qty = num_of_people / servings[fav_food]
    return "You need to make #{fav_food_qty} #{fav_food}(s)."

# assigns numbers of pie, cake, and/or cookies to be prepared so that 1 serving
# is available for each person -- pie is assigned first, then cake, then cookies

  else 
    pies = num_of_people / servings["pie"]
    num_of_people = num_of_people % servings["pie"]
    cakes = num_of_people / servings["cake"]
    num_of_people = num_of_people % servings["cake"]
    cookies = num_of_people
end

  return "You need to make #{pies} pie(s), #{cakes} cake(s), and #{cookies} cookie(s)."
end

#DRIVER TEST CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver test code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!


#  Reflection 

<<-Reflection
Interesting to work on this with Joseph; we ran circles around whether the
best way to do this would be by rewriting the code or refactoring it

In the end, we decided that rewriting the code may be defeating the purpose of
the exercise and refactored it instead
Reflection


