# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

=begin
Write a method called super_fizzbuzz which takes as its input an Array of integers.

It should return a "fizzbuzzed" Array, i.e., the array is identical to the input with the following substitutions:

Multiples of 3 should be replaced with the string "Fizz"
Multiples of 5 should be replaced with the string "Buzz"
Multiples of 15 should be replaced with the string "FizzBuzz"
=end


# 2. Pseudocode
=begin
WRITE a method super_fizzbuzz that takes an arr as argument
SET a var result = []
Iterate through the array and look at each element 
  IF element % 15 eql 0 
  push the string FizzBuzz instead of the element into result
  IF ElSE element % 5 eql 0
  push the string Buzz instead of element into result
  IF ELSE element % 3 eql 0
  push the string Fizz instead of element into result
  ELSE return the element
return result

=end
# 3. Initial Solution

# def super_fizzbuzz(array)
#   result = []
#   array.each do |num|
#     if num % 15 == 0
#       result.push("FizzBuzz")
#     elsif num % 5 == 0
#       result.push("Buzz")
#     elsif num % 3 == 0
#       result.push("Fizz")
#     else
#       result.push(num)
#     end
#   end
#   return result
# end



# 4. Refactored Solution

def super_fizzbuzz(array)
  result = array.map do |num|
    if num % 15 == 0
      num = "FizzBuzz"
    elsif num % 5 == 0
      num = "Buzz"
    elsif num % 3 == 0
      num = "Fizz"
    else
      num = num
    end
  end
  return result
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
my_arr = [3, 5, 15, 8, 7, 9, 10, 30]

def assert
  raise "Assertion Failed" unless yield
end

p assert {super_fizzbuzz(my_arr) == ["Fizz", "Buzz", "FizzBuzz", 8, 7, "Fizz", "Buzz", "FizzBuzz"] }

# 5. Reflection 
# What parts of your strategy worked? What problems did you face?
	#Christiane and I had very few issues. We had two separate stretegies with how to work through this problem, the first is in the original code, and the refactored solution is the other strategy.

# What questions did you have while coding? What resources did you find to help you answer them?
	#Not really any

# What concepts are you having trouble with, or did you just figure something out? If so, what?
	#none

# Did you learn any new skills or tricks?
	#More work with map

# How confident are you with each of the Learning Competencies?
	#Very confident

# Which parts of the challenge did you enjoy?
	#All of it

# Which parts of the challenge did you find tedious?
	#none, it was fun
