# U3.W8-9: What the Scope


# I worked on this challenge [with: Christiane Kammerl ].

# 1. What are the problems in the error messages?
  #The two of us didn't see this instruction at the beginning and just dove straight into fixing the code
  #We did some major editing just to make things run, but we did identify all of the variables and made them work.
  #The issues with getting the code to run were that some of the variables weren't assigned values, the code tried to change the value of a constant, and there were many useless variables
  #We changed the variable and class names, removed some variables, and messed with the code to show that we could use some of the other variables
  #We didn't see any use of the class variable so we removed it.


=begin

What errors are you getting? Note them so you can fix them in Release 1.

See above

Modify the code so all variables are accessible within the code when needed (ie make the code run).
For each modification add a comment in the code that states what you modified and why.

For each variable, identify the scope. Include the scope of each variable as a comment.
1. var_1 is a ........... variable which means ......
#see modified and refactored code


Driver Test
=end

# 2. Original Code
=begin
$var_1 = 22
 
class Person
  @@var_2
  VAR_6 = "Ruby"
 
  attr_reader :var_3, :var_4
 
  def initialize(var_5 = VAR_6)
    @var_3="Law of Demeter"  
  end
 
  def do_stuff(var_7=[1,2,3])
    var_7.each do |var_8|
      var_9 += var_8 + 2
    end
  end
end
=end 
# 3. Modified Code (with scope identified as comments)
=begin
$var_1 = 22 # global variable which accessible by all methods inside and outside of the class
 
class Person
 # @@var_2 # class variable, is the same for all instances of the class
 #VAR_6 = "Ruby" #constant
 
  attr_reader :var_3, :var_4 # creating two readable instance methods
 
  def initialize(var_5 = "Ruby") #argument eql to constant 
    @var_3="Law of Demeter"  #instance variables are accessible by all methods of the class but are unique to each instance
    #@var_6 = "Ruby" #another instance variable
  end
 
  def do_stuff(var_7=[1,2,3])
    var_7.each do |var_8| #local variable, only accessible in the method that defines them
      var_9 += var_8 + 2 #local variable var_9
    end
  end
end
=end

#Refactored Code

$num_to_add = 22 # changed the global variable's name
 
class ProgrammingLanguages #changed the classes name

  attr_reader :name, :rule # creading two readable instance methods
 
  def initialize(name = "Ruby") #initializing new instances with one argument
    @name = name #setting instance variable @name equal to name argument, which will be a string
    @rule = "Law of Demeter"  #instance variable @rule set eql to string
  end
 
  def add_twenty_two(arr = [1,2,3]) #edit method and argument name; instances of ProgrammingLanguages can now modify an array
    result = 0 #new result variable set equal to 0
    arr.each do |num| #iterating through an argument array; edited placeholder name
      result += num + $num_to_add #accessing global var num_to_add as value to add to each array element
    end
    return result #returning total with 22 per array element added
  end
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

puts language = ProgrammingLanguages.new("Ruby")

puts language.add_twenty_two

puts language.add_twenty_two([5, 6, 7, 8])

puts language.name

puts language.rule

def assert
  raise "Assertion failed" unless yield
end

assert { language.add_twenty_two == 72 }
assert { language.class == ProgrammingLanguages }
assert { language.add_twenty_two([5, 6, 7, 8]) == 114 }
assert { language.name == "Javascript" } 

# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
  #This was easy to do. There's a lot going on with Ruby, but this was fun.

# What questions did you have while coding? What resources did you find to help you answer them?
  #I had forgotten the slight, yet very important, difference between class and instance variables. I just reviewed them in the well grounded rubyist

# What concepts are you having trouble with, or did you just figure something out? If so, what?
  #Ruby is a beautiful mistress, so none

# Did you learn any new skills or tricks?
  #.class

# How confident are you with each of the learning objectives?
  #Very

# Which parts of the challenge did you enjoy?
  #They were all a lot of fun. This was a good scope understanding exercise.

# Which parts of the challenge did you find tedious?
  #None