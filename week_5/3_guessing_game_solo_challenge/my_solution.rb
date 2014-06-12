# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:
# Input is just a random number which is your guess for the guessing game

# Output:
# Output includes:

# 1. has the game been solved?  true or false
# 2. is the guess too high, too low or correct?

# Steps:
# 1. Compare the guess with the correct solution 
# 2. If it's too high, display "too high" and keep the solved status at false and loop through game again
# 3. If it's too low, display "too low" and keep the solved status at false and loop through game again
# 4. If it's correct, display "correct" and changed the solved status to true and break the loop

# 3. Initial Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(my_guess)
    @my_guess = my_guess
  	if @my_guess == @answer
  		:correct
  	elsif @my_guess < @answer
  		:low
  	else 
  		:high
  	end
  end

  def solved?
    if @my_guess == @answer
      true
    else
      false
    end
  end
end


# 4. Refactored Solution



# 1. DRIVER TESTS GO BELOW THIS LINE

p game = GuessingGame.new(10)
p game.solved? == false
p game.guess(5) == :low
p game.guess(20) == :high
p game.solved? == false
p game.guess(10) == :correct
p game.solved? == true

# 5. Reflection 

<<-Reflection
Logic for this problem was simple enough; still need to figure out most
efficient ways of writing the code though

Also need to get a better handle of symobls
Reflection