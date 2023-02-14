class Triangle
  # write code here
  
    class TriangleError < StandardError; end
    
    def initialize(side1, side2, side3)
      @side1 = side1
      @side2 = side2
      @side3 = side3
    end
  
    def kind
      validate_triangle
      if @side1 == @side2 && @side2 == @side3
        :equilateral
      elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
        :isosceles
      else
        :scalene
      end
    end
  
    def validate_triangle
      valid_triangle = [@side1, @side2, @side3].all? {|side| side > 0}
      valid_triangle &= (@side1 + @side2 > @side3) & (@side2 + @side3 > @side1) & (@side1 + @side3 > @side2)
      raise TriangleError, "Invalid triangle" unless valid_triangle
    end
 
  
    

  
end
