# I worked on this challenge [by with: Sebastian Belmar & Kevin Kang ].

# 2. Pseudocode

# DEFINE class rectangle
#   DEFINE instance method area that calculates width times height
#   DEFINE instance method perimeter that calculates (width + height) * 2
#   DEFINE instance method diagonal that calculates (width**2 + height**2)**0.5
#   DEFINE instance method square? that return boolean depending if width == height
# end

# 3. Initial Solution
# class Rectangle
#   attr_accessor :width, :height

#   def initialize(width, height)
#     @width  = width
#     @height = height
#   end
  
#   def area
#     @width*@height
#   end
  
#   def perimeter
#     (@width+@height) * 2
#   end
  
#   def diagonal
#     (@width**2 + @height**2)**0.5
#   end
  
#   def square?
#     @width == @height 
#   end

#   def ==(other)
#     (other.width  == self.width && other.height == self.height ) ||
#     (other.height == self.width && other.width  == self.height )
#   end
# end


# 4. Refactored Solution

class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end
  
  def area
    @width*@height
  end
  
  def perimeter
    (@width+@height) * 2
  end
  
  def diagonal
    (@width**2 + @height**2)**0.5
  end
  
  def square?
    @width == @height 
  end

end




# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "something is wrong!" unless yield
end


rectangle = Rectangle.new(10, 20)
square = Rectangle.new(20, 20)

assert{Rectangle.method_defined?(:area) == true}

assert{Rectangle.method_defined?(:square?) == true}

assert{Rectangle.method_defined?(:perimeter) == true}

assert{Rectangle.method_defined?(:diagonal) == true}

assert{rectangle.area == 200}

assert{square.area == 400}

assert{rectangle.perimeter == 60}

assert{square.perimeter == 80}

assert{rectangle.diagonal== 22.360679774997898}

assert{square.diagonal == 28.284271247461902}

assert{rectangle.square? == false}

assert{square.square? == true}


# 5. Reflection 

# What parts of your strategy worked? What problems did you face?
#  	I removed the other method in the refactored equation because we aren't using it at all in the spec file.
# 	The ruby assignments are way easier than the Javascript ones, and we had not problems with this activity.

# What questions did you have while coding? What resources did you find to help you answer them?
	# None, super easy

# What concepts are you having trouble with, or did you just figure something out? If so, what?
	# None

# Did you learn any new skills or tricks?
	# not really, it seems that the ruby assignments are easy in comparison to the other ones

# How confident are you with each of the Learning Competencies?
	#Relatively confident

# Which parts of the challenge did you enjoy?
	#it was good

# Which parts of the challenge did you find tedious?
	#none really.