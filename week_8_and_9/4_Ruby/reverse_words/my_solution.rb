# U3.W8-9: Reverse Words


# I worked on this challenge [with: Sebastion Belmar and Kevin Kang].

# 2. Pseudocode

# Create a reverse_words method that splits the words, maps them into an array, reverses the words and then joins them together

# 3. Initial Solution

def reverse_words(word)
	words.split.map!{|word| word.reverse}.join(" ")
end


# 4. Refactored Solution

def reverse_words(word)
	words.split.map!{|word| word.reverse}.join(" ")
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def random_word(length = 5)
  rand(36**length).to_s(36)
end

def assert
	raise "Doing it WRONG!" unless yield
end



assert{reverse_words("") == ""}

word = random_word

assert{reverse_words(word) == word.reverse}

word1 = random_word
word2 = random_word

assert{reverse_words("#{word1} {word2}") == ("#{word1} {word2}"}).reverse

assert{reverse_words("Ich bin ein Berliner") == "hcI nib nie renilreB"}

# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
	#We split this assignment up between the three of us and saw who could do it the fastest, I lost. I'm a bit slower and more methodological I guess, nothing wrong with that.
	#Kevin and Seba helped a ton with this problem.

# What questions did you have while coding? What resources did you find to help you answer them?
	#This problem was super easy


# What concepts are you having trouble with, or did you just figure something out? If so, what?
	#none with this one

# Did you learn any new skills or tricks?
	#nope

# How confident are you with each of the Learning Competencies?
	#Very

# Which parts of the challenge did you enjoy?
	#meh

# Which parts of the challenge did you find tedious?
	#none, super easy