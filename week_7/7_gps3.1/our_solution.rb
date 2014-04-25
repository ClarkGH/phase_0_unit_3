# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Daniel Yoachim
# 2. Clark Hinchcliff
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to grocery create a grocery list
# As a user, I want to view grocery list
# As a user, I want to add items to the grocery list
# As a user, I want to remove items from grocery list
# As a user, I want to get total number of items
# As a user, I want to get number of specific item
 
# Pseudocode
# create a grocery class
# create attr_accessor to view grocery_list
# create an initialize method with an array named "grocery_list"
# create an add_to method for grocery_list
# create a remove_from method
# create a view_total method to view items in list
# create a specific_number for item in grocery list
 
 
# Your fabulous code goes here....
class Grocery
  
  attr_reader :grocery_list
  
  def initialize(grocery_hash = {})
    @grocery_list = grocery_hash
  end
  
  def add_to(new_item)
    @grocery_list.merge!(new_item)
  end
  
  def remove_from(remove_item)
    @grocery_list.delete(remove_item)
  end
  
  def view_total
    @grocery_list.length
  end
  
  def specific_number(item)
    @grocery_list[item]
  end
end



# DRIVER CODE GOES HERE. 
 
 def assert
   raise "Assertion Failed!" unless yield
 end
 
grocery = Grocery.new
assert{grocery.grocery_list == {} }
grocery = Grocery.new({"apple"=> 1, "banana"=> 2})
assert{grocery.grocery_list == {"apple" => 1, "banana" => 2} }
grocery.add_to({"orange"=> 3})
assert{grocery.grocery_list == {"apple" => 1, "banana" => 2, "orange" => 3} }
grocery.remove_from("orange")
assert{grocery.grocery_list == {"apple"=> 1, "banana"=> 2} }
assert{grocery.view_total == 2}
assert{grocery.specific_number("banana") == 2}

#Reflection
# What parts of your strategy worked? What problems did you face?
  #We went slow and steady. We were initially hinted towards not using hashes, but then we just used them and everything worked out perfectly.

# What questions did you have while coding? What resources did you find to help you answer them?
  #We just used the official documentation when we started with arrays

# What concepts are you having trouble with, or did you just figure something out? If so, what?
  #I struggle with hashes because I don't use them very often, but my partner knew what to do. I'll be doing some additional research next week during the review.

# Did you learn any new skills or tricks?
  #This was a good review

# How confident are you with each of the Learning Competencies?
  #Getting good

# Which parts of the challenge did you enjoy?
  #I enjoy GPS

# Which parts of the challenge did you find tedious?
  #None