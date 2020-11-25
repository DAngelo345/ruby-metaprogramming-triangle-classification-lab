class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    self.side1 = side1
    self.side2 = side2
    self.side3 = side3

  end

  def kind
    kind1 = :equilateral 
    kind2 = :isosceles
    kind3 = :scalene


    if side1 <= 0 || side2 <= 0 || side3 <= 0
        raise TriangleError 
    elsif
      side1 + side2 <= side3 || side3 + side2 <= side1 || side3 + side1 <= side2
      raise TriangleError  
    end


    if side1 == side2 && side2 == side3 && side1 == side3
      kind1
    elsif side1 == side2 && side2 != side3 || side3 == side2 && side1 != side2 || side1 == side3 && side2 != side3
      kind2
    elsif side1 != side2 && side2 != side3 && side3 != side1
      kind3
    end 
  end


   class TriangleError < StandardError

    def message
      "Is not triangel"
    end

   end
  
  
end
