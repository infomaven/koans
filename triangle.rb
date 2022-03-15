#Triangle Project Code.

#Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.

#It returns:
#  :equilateral  if all sides are equal
#  :isosceles    if exactly 2 sides are equal
#  :scalene      if no sides are equal

def triangle(a, b, c)
  if (a ==0 or  b == 0 or  c ==  0) 
    raise TriangleError, "! All sides must have length > 0"
  end
  if (a+b <= c) or (a+c <= b) or (b+c <= a)
    raise TriangleError, "!Total of any 2 sides must be > the third side"
  end
  if (a == b and a == c and b ==c)
    return :equilateral
 elsif (a !=  b and b != c and a != c )  
    return :scalene
  elsif (a==b && a!=c) || (a==c && a!=b) || (b==c && b!=a)
    return :isosceles
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError

end
