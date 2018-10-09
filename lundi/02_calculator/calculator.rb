
def add(x,y)
  x + y
end

def subtract(x,y)
  x - y
end

def sum(a)
  s = 0
  a.each do |x|
    s += x
  end
  s
end

def multiply(x,y)
	 x*y
end

def product(a)
  p = 1
  a.each do |x|
    p *= x
  end
  p
end

def power(x,y)
  x**y
end

def fact(n)
  f = 1
  (2..n).each do |k|
    f *= k
  end
  f
end
