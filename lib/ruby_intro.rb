# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # take in data from arr and then apply the sum method
  arr.sum
end

def max_2_sum arr
  # max_2 = 2 largest values
  max_2 = arr.max(2)
  # then uses sum to sum the two values
  max_2.sum
end

def sum_to_n? arr, n
  # if array is empty or
  # if array has 1 value
  if arr.count == 0 || arr.count == 1
    return false
  end  
  # for each arr value, subtract it from n
  for i in arr do
    
    find = n - i
    # if find value is in the array, return true
    if arr.include?(find) == true
      return true
    end

  end
end

# Part 2

def hello(name)
  # concat hello, with the given name as a string
  #hello_str = 'hello, '
  #message = hello_str << name
  #puts message

  puts "hello,  #{name}"
end

def starts_with_consonant? s
  # if first char does not start with vowel and upper or lower case
  # match is true
  if /^[^aeiou\W]/i.match(s) == nil
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock

# set isbn
# set price
# constructor method
  def initialize(isbn,price)
    @isbn = isbn
    @price = price
    if isbn == ""
      raise ArgumentError
    end  
    if price == 0 || price < 0
      raise ArgumentError
    end  

  end

  # getters
  def isbn
    @isbn
  end

  def price
    @price
  end

  # setters
  def isbn=(isbn) 
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  # method to add a $ and 2 sigfigs to price
  def price_as_string
    puts "$" + (price.round(2)).to_s
  end

end
