class Triangle

  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    type = "none"
    if ((@side1 > 0 && @side2 > 0 && @side3 > 0) && (@side1 + @side2 > @side3 || @side1 + @side3 > @side2 || @side2 + @side3 > @side1))
      if @side1 === @side2 && @side1 === @side3
        type = :equilateral
      elsif (@side1 === @side2 || @side1 === @side3 || @side2 === @side3) && (@side1 != @side2 || @side1 != @side3 || @side2 != @side3)
        type = :isosceles
      else
        type = :scalene
      end
    else
      type = "none"
    end
    if type === "none"
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else
      type
    end
  end
  
  class TriangleError < StandardError
    def message
      "Error!"
    end
  end

end