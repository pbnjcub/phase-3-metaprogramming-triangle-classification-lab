require 'pry'

class Triangle
  # write code here
  attr_accessor :side_one, :side_two, :side_three

  @@side_one = " "
  @@side_two = " "
  @@side_three = " "

  def initialize(one, two, three)
    @@side_one = one
    @@side_two = two
    @@side_three = three
  end

  def kind
    if @@side_one > 0 and @@side_two > 0 and @@side_three > 0
      if @@side_one + @@side_two <= @@side_three or @@side_one + @@side_three <= @@side_two or @@side_two + @@side_three <= @@side_one
        begin
          raise TriangleError
        end
      elsif @@side_one == @@side_two and @@side_one == @@side_three
        :equilateral
      elsif @@side_one == @@side_two or @@side_one == @@side_three or @@side_two == @@side_three
        :isosceles
      else
        # @@side_one != @@side_two and @@side_one != @@side_three and @@side_two != @@side_three
        :scalene
      end
    else
      begin
        raise TriangleError
      end
    end
  end

  class TriangleError < StandardError
  end

end

binding.pry
