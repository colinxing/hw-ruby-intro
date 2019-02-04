# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, '+')
end

def max_2_sum arr
  # YOUR CODE HERE
  if(arr.length == 0)
    return 0
  elsif(arr.length == 1)
    return arr.at(0)
  else
    if(arr.at(0) > arr.at(1))
      a = arr.at(0)
      b = arr.at(1)
    else
      b = arr.at(0)
      a = arr.at(1)
    end
    i = 2
    while i < arr.length
      if(arr.at(i) > a)
        b = a
        a = arr.at(i)
      elsif(arr.at(i) > b)
        b = arr.at(i)
      end
      i += 1
    end
    return a + b
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr.sort!
  f = 0
  l = arr.length - 1
  while f < l
    if(arr.at(f) + arr.at(l) == n)
      return true
    elsif(arr.at(f) + arr.at(l) < n)
      f += 1
    else
      l -= 1
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if(s.empty? || !s[0,1][/[a-zA-Z]/])
    return false
  end
  if(s.to_s.upcase.start_with?('A','E','I','O','U'))
    return false
  end
  return true
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if(s == "0")
    return true
  end
  if(s.count('0') + s.count('1') != s.size || s[-2,2] != "00")
    return false
  end
  return true
end

# Part 3

class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price
    def initialize(isbn, price)
      if(isbn.empty? || price <= 0)
        raise ArgumentError
      end
      @isbn = isbn
      @price = price
    end
  
    def price_as_string
      # puts "$"+ format("%.2f", @price)
      return "$"+ format("%.2f", @price)
    end
end