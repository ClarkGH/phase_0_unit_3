# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge [with: Keving Kang]

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  puts $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years}")
end

def print_lowest_grade_level_speakers(grade)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < 8th grade)"
  puts $db.execute("SELECT name FROM congress_members WHERE grade_current < #{grade}")
end

def first_name_search(first_name)
  puts "REPRESENTITIVES WITH #{first_name.upcase} AS THEIR FIRST NAME"
  puts $db.execute("SELECT name FROM congress_members WHERE name LIKE 'Rep. #{first_name}%'")
end

def print_state_reps(state)
  puts "REPS OF STATE #{state.upcase}"
  puts $db.execute("SELECT name FROM congress_members WHERE location = '#{state.upcase}'")
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end


print_arizona_reps

print_separator

first_name_search('dan')
print_separator

print_longest_serving_reps(35)
# TODO - Print out the number of years served as well as the name of the longest running reps
# output should look like:  Rep. C. W. Bill Young - 41 years

print_separator
print_lowest_grade_level_speakers(10)
# TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

print_separator
print_state_reps('NJ')

print_separator
print_state_reps('NY')

print_separator
print_state_reps('ME')

print_separator
print_state_reps('FL')

print_separator
print_state_reps('AK')
# TODO - Make a method to print the following states representatives as well:
# (New Jersey, New York, Maine, Florida, and Alaska)


##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)
# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.

# How does the sqlite3 gem work?  What is the variable `$db` holding?  
	#SQLite3 allows ruby to work with the SQLite3 database engine. $db holds the database

# Try to use your knowledge of ruby and OO to decipher this as well as h
# ow the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for 
# your fellow students.  
# If you're having trouble, find someone to pair on this explanation with you.
	#execute runs the database query
	#The above code will show the names of the congress members that have been in congress longer than the minimum amount of years given.

# What parts of your strategy worked? What problems did you face?
	#We didn't come accross errors, but the two of us were able to get through this one pretty easily and fast.
	#I still need to learn how to prevent the SQL issues. I'm going to come back to this exercise when I have free time.

# What questions did you have while coding? What resources did you find to help you answer them?
	#We used SQLzoo to answer the questions we had.
	#https://www.owasp.org/index.php/SQL_Injection_Prevention_Cheat_Sheet

# What concepts are you having trouble with, or did you just figure something out? If so, what?
	#Not too many.

# Did you learn any new skills or tricks?
	#With further research I'll be able to prevent SQL injection attacks. I'm not there yet, this is beyond me at this point. I need to work on this a bit more.
	#How to utilize SQL with ruby
	#SQL injection attacks

# How confident are you with each of the Learning Competencies?
	#Getting pretty confident

# Which parts of the challenge did you enjoy?
	#It was fun pairing through it

# Which parts of the challenge did you find tedious?
	#None really