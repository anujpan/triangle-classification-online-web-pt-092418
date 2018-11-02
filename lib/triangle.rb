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
    error_one = @side_one <= 0 || @side_two <= 0 || @side_three <= 0
    error_two = nil
    error_three = nil
    
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