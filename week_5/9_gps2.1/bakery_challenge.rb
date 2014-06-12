# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) George Zeng
# 2) Joseph White

 # This is the file you should end up editing. 
 
# method takes 2 parameters: # of people and favorite food
# checks to ensure favorite food matches available option
# checks to see if favorite food can serve all people 1 serving without leftovers
# if it cannot, assigns appropriate numbers of pie, cake, or cookies (in that order)
# to ensure 1 serving per person is prepared

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
 
#-----------------------------------------------------------------------------------------------------
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
