#Triangle Project Code.

#Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.

#It returns:
#  :equilateral  if all sides are equal
#  :isosceles    if exactly 2 sides are equal
#  :scalene      if no sides are equal

def triangle(a, b, c)
  if a == b and a == c and b == c
    return :equilateral
  elsif a != b and a != c and b != c
    return :scalene
  else
    return :isosceles
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
