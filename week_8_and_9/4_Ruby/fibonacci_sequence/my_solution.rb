# U3.W8-9: 


# I worked on this challenge [by myself].

# 2. Pseudocode
	#1. Create a fibonacci checking method that accepts any number
	#2. Make the method loop up until it reaches the number fed through the argument
	#3. If the number is equal to the previous number plus the number before that one in the fibonacci sequence return true
	#4. else return false
	#5. Make sure that the function will accept 0 and 1 as part of the fibonacci sequence


# 3. Initial Solution

# def is_fibonacci?(num)
# 	fibonacci_array = [0, 1]
# 	while num > fibonacci_array.last
# 		x, y = fibonacci_array.pop(2)
# 		fibonacci_array.push(x, y, x + y)
# 	end

# 	if num == fibonacci_array.last
# 		return true
# 	elsif num == 0
# 		return true
# 	else
# 		return false
# 	end
# end


# 4. Refactored Solution

def is_fibonacci?(num)
	fibonacci_array = [0, 1]
	
	while num > fibonacci_array.last
		first_val, second_val = fibonacci_array.pop(2)
		fibonacci_array.push(first_val, second_val, first_val + second_val)
	end

	if num == fibonacci_array.last
		return true
	elsif num == 0
		return true
	else
		return false
	end
end




# 1. DRIVER TESTS GO BELOW THIS LINE

def random_fibonacci
   [0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample
end

def assert
	raise "The Assertion has Failed" unless yield
end

assert {is_fibonacci?(1) == true}

assert {is_fibonacci?(0) == true}

assert {is_fibonacci?(random_fibonacci) == true}

assert {is_fibonacci?(8670007398507948658051921) == true}

assert {is_fibonacci?(927372692193078999171) == false}

assert {is_fibonacci?(random_fibonacci+100) == false}

# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
	#I didn't have any real problems with this one. I enjoyed it.

# What questions did you have while coding? What resources did you find to help you answer them?
	#I wanted to learn how to work the fibonacci sequence in code, so I did some research. The great majority of the code was a bit confusing so I just went with what I felt worked by the simplest means.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
	#I learned that I can assign two different values to two different variables on the same line by popping arrays. Just take a look at line 39.

# Did you learn any new skills or tricks?
	#see above. I feel great about it.

# How confident are you with each of the Learning Competencies?
	#I am getting better at coding.

# Which parts of the challenge did you enjoy?
	#I find ruby a lot easier to work with than the other languages mainly because it's what we've been working with the majority of the time.

# Which parts of the challenge did you find tedious?
	#Like in earthbound(points if you get the reference), no problem here.