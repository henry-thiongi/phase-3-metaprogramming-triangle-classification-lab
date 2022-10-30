class Triangle
  attr_accessor :sidea, :sideb, :sidec

  def initialize(sidea, sideb, sidec)
    @sidea = sidea
    @sideb = sideb
    @sidec = sidec
  end

  def kind
    if sidea <= 0 || sideb <= 0 || sidec <= 0
      raise TriangleError
    elsif sidea + sideb <= sidec || sideb + sidec <= sidea || sidea + sidec <= sideb
      raise TriangleError
    elsif sidea == sideb && sideb == sidec
      :equilateral
    elsif sidea == sideb || sideb == sidec || sidea == sidec
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError 
  end
end