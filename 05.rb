# Smallest multiple
# Problem 5 
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?o

# The primes less than the number n, their largest multiple also less than n are
# the factors

require_relative "lib/prime"


def num(n)
  factors = []
  primes = Prime.getPrimesUpTo(n)

  for i in 2..n #<= loop through all ints to get their factors
    arr = Prime.primeFactorization(i)
    for j in primes
      arr.slice!(arr.index(j)) if arr.include? j
    end
    primes.concat(arr)
  end
  prod = 1;
  for i in primes
    prod *= i
  end
  return prod
end
start = Time.now
puts num(20)
finish = Time.now
puts "#{finish - start} seconds elapsed..."

