# Largest prime factor
# Problem 3 
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require_relative "../lib/prime"

start = Time.now()
puts Prime.primeFactors(600851475143)
finish = Time.now()
puts "#{finish - start} seconds elapsed..."
