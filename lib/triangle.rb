require 'pry'

class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @shape = [side_one, side_two, side_three]
  end

  def trouble_triangle
    @shape    
  end

  def kind
    if @shape.include?(/\-[0-9]*/) || @shape.include?(0)
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
end
