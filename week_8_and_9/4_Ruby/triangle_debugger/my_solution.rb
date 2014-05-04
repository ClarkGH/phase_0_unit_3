# U3.W8-9: Triangle Debugger


# I worked on this challenge [by myself, with: ].


# 1. Original Solution

# def valid_triangle?(a, b, c, sum)
#   if a != 0 || b != 0 || c != 0
#   if a >= b
#   largest = a
#   sum += b
#   else largest = b
#   sum += a
#   end
#   if c > largest
#   sum += largest
#   largest = c
#   else sum += c
#   end
#   if sum > largest
#   return "true"
#   else return "false"
#   end
#   else return "false"
#   end
# end

def valid_triangle?(a, b, c)
  sum = 0
  return false if a <= 0 || b <= 0 || c <= 0
  return false if a + b < c || a + c < b || b + c < a
  if a != 0 || b != 0 || c != 0
    if a >= b
      largest = a
      sum += b
    else largest = b
      sum += a
    end
    if c > largest
      sum += largest
      largest = c
    else 
      sum += c
    end
    if sum > largest
      return "true"
    else 
      return "false"
    end
  else 
    return "false"
  end
end


# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error?
#   valid_triangle? expects 3 arguments
# * what is the exact line number the error is appearing?
#    line 9
# * before you fix the bug, what do you think is causing the error?
#   the sum arguement 

# --- Bug 2 ---
# * what is the exact description of the error?
#   valid_triangle? returns false if any of the arguments are 0
# * what is the exact line number the error is appearing?
#   line 20
# * before you fix the bug, what do you think is causing the error?

# --- Bug 3 ---
# * what is the exact description of the error?
#   valid_triangle? returns false for any impossible triangle
# * what is the exact line number the error is appearing?
#   line 46 in spec file (not returning expected value)
# * before you fix the bug, what do you think is causing the error?
#   It's because we don't have any test to check for an invalid traingle (a + b > c)

# 3. Refactored Solution (Comment the other code to run this)

def valid_triangle?(a, b, c)
  a + b > c && a + c > b && b + c > a ? true : false
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert
  raise "assertion failed" unless yield 
end

assert { valid_triangle?(0,2,2) == false }
assert { valid_triangle?(2,2,2) == true }
assert { valid_triangle?(1,2,3) == false }


# U3.W8-9: Triangle Debugger


# I worked on this challenge [by myself, with: ].


# 1. Original Solution

# def valid_triangle?(a, b, c, sum)
#   if a != 0 || b != 0 || c != 0
#   if a >= b
#   largest = a
#   sum += b
#   else largest = b
#   sum += a
#   end
#   if c > largest
#   sum += largest
#   largest = c
#   else sum += c
#   end
#   if sum > largest
#   return "true"
#   else return "false"
#   end
#   else return "false"
#   end
# end

def valid_triangle?(a, b, c)
  sum = 0
  return false if a <= 0 || b <= 0 || c <= 0
  return false if a + b < c || a + c < b || b + c < a
  if a != 0 || b != 0 || c != 0
    if a >= b
      largest = a
      sum += b
    else largest = b
      sum += a
    end
    if c > largest
      sum += largest
      largest = c
    else 
      sum += c
    end
    if sum > largest
      return "true"
    else 
      return "false"
    end
  else 
    return "false"
  end
end


# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error?
#   valid_triangle? expects 3 arguments
# * what is the exact line number the error is appearing?
#    line 9
# * before you fix the bug, what do you think is causing the error?
#   the sum arguement 

# --- Bug 2 ---
# * what is the exact description of the error?
#   valid_triangle? returns false if any of the arguments are 0
# * what is the exact line number the error is appearing?
#   line 20
# * before you fix the bug, what do you think is causing the error?

# --- Bug 3 ---
# * what is the exact description of the error?
#   valid_triangle? returns false for any impossible triangle
# * what is the exact line number the error is appearing?
#   line 46 in spec file (not returning expected value)
# * before you fix the bug, what do you think is causing the error?
#   It's because we don't have any test to check for an invalid traingle (a + b > c)

# 3. Refactored Solution (Comment the other code to run this)

def valid_triangle?(a, b, c)
  a + b > c && a + c > b && b + c > a ? true : false
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

def assert
  raise "assertion failed" unless yield 
end

assert { valid_triangle?(0,2,2) == false }
assert { valid_triangle?(2,2,2) == true }
assert { valid_triangle?(1,2,3) == false }

# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
#We had an easy time with this challenge. It was fun. We realized that if you put 0 anywhere in our code it would come out to being false, so we only needed one line of code.

# What questions did you have while coding? What resources did you find to help you answer them?
  #Getting arity to work with methods is different from classes, that's something I'll need to research.

# What concepts are you having trouble with, or did you just figure something out? If so, what?
  #Not really any, I just need to review some things.

# Did you learn any new skills or tricks?
  #Nope

# How confident are you with each of the Learning Competencies?
  #Pretty confident, ruby isn't hard to work with

# Which parts of the challenge did you enjoy?
  #All really, I love working with ruby

# Which parts of the challenge did you find tedious?
  #none