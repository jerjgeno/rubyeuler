# Largest palindrome product
# Problem 4 
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def isPalindromeBiggerThanMax(n,max)
  return false if n<max
  arr = n.to_s.chars.map(&:to_i) #<= converts number to array of digits
  #gets the midpoint, minus one because arrays start at 0
  midsize = ((arr.count/2).floor)-1 
  return true if midsize==-1 #<= midsize is -1 if n is 1 number, always a palindrome
  for i in 0..midsize
    return false if arr[i] != arr[-i-1] #<= negative array index has to be minus one
  end
  return true
end

start = Time.now
max = 0
for i in 100..999
  for j in 100..999
    prod = i * j
    max = prod if isPalindromeBiggerThanMax(prod,max) and prod>max
  end
end
puts max
finish = Time.now
puts "#{finish - start} seconds elapsed..."

