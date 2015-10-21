# I worked on this challenge [by myself].


# Your Solution Below

def valid_triangle?(a,b,c)
  if (a+b>c) && (b+c>a) && (a+c>b)
    return true
  else
    return false
  end
end