def add(x, y)
  x + y
end

def subtract(x, y)
	x - y
end

def sum(arr)
	arr.reduce(0, :+)
end 

# the methodsd below are all extra credit
def multiply(*arr)
	product, i = 1, 0

  while i < arr.length
  	product *= arr[i]
  	i += 1
  end

  # could also just use reduce, just keeping fundamentals sharp
  product
end

def power(x, y)
	x ** y
end

def factorial(n)
	total = 1
	while n > 1
		total *= n
		n -= 1
	end

	total
end