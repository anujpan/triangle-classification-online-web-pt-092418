require 'pry'

class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    @shape = [side_one, side_two, side_three]
  end

  def trouble_triangle
    @shape    
  end

  def kind
    error_one = @a == 0 || @b == 0 || @c == 0  
    error_two = @a + @b <= @c || @b + @c <= @a || @a + @c <= @b 
    error_three = @a.negative? || @b.negative? || @c.negative?
    
    if error_one || error_two || error_three
      raise TriangleError      
    elsif @shape.uniq.length == 1
      :equilateral
    elsif @shape.uniq.length == 2 
      :isosceles
    else
      :scalene
    end
  end
end

  
class TriangleError < StandardError
  
end