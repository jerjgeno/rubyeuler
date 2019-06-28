# Sum square difference
# Problem 6 
# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers 
#  and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural 
#  numbers and the square of the sum.

def sumOfSquares(n)
  sum = 0
  for i in 1..n
    sum+=i**2
  end
  return sum
end

def squareOfSum(n)
  sum = 0
  for i in 1..n
    sum+=i
  end
  return sum**2
end

start = Time.now
n = 100
sum = sumOfSquares(n)
square = squareOfSum(n)
puts "Sum of squares is: #{sum}"
puts "Square of sum is: #{square}"
puts "Difference is: #{square-sum}"
finish = Time.now
puts "#{finish - start} seconds elapsed..."
