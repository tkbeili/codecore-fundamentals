# Build class “Rectangle” and give it two attribute 
# accessors: width and height. Add a method “area” that 
# returns the area

class Rectangle
  attr_accessor :width
  attr_accessor :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def area
    width * height
  end

end

# Do the class a bit differently: add initialize method to 
# Rectangle that auto calculates the area. Make sure to have an 
# attribute reader to access the results
class Rectangle
  attr_accessor :width
  attr_accessor :height
  attr_reader   :area

  def initialize(width, height)
    @width  = width
    @height = height
    @area   = @width * @height
  end

end
