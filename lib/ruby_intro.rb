# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  if arr.size < 1
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    arr=arr.sort()
    sum = arr[arr.size-1]+arr[arr.size-2]
    return sum
  end
end

def sum_to_n? arr,n
  combos = arr.combination(2).select { |a, b| a + b == n }
  if combos.empty?
    return false
  else
    return true
  end
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if (s.to_i(10)%4==0 and s !~ /[^01]/ and !s.empty?)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(n,p)
      # assign instance variables
      if (n.empty? or p <= 0.0)
        raise ArgumentError
      end
      @isbn = n
      @price = p
   end
   
   def isbn
     @isbn
   end
   
   def isbn=(isbn)
     @isbn = isbn
   end
   
   def price
     @price
   end
   
   def price=(price)
     @price = price
   end
   
   def price_as_string
     return "$%0.2f"%[@price]
   end
end
