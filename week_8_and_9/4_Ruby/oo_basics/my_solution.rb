# U3.W8-9: OO Basics: Student


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode



# 3. Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(args)   #Use named arguments!
    #your code here
  end
end


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# Tests for release 0:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Tests for release 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Tests for release 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
# What questions did you have while coding? What resources did you find to help you answer them?
# What concepts are you having trouble with, or did you just figure something out? If so, what?
# Did you learn any new skills or tricks?
# How confident are you with each of the Learning Competencies?
# Which parts of the challenge did you enjoy?
# Which parts of the challenge did you find tedious?