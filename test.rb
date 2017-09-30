require_relative "prime"

x = 10 
start = Time.now

puts Prime.primeFactorization(10)
puts "--"
puts Prime.primeFactors(10)
puts "--"
puts "--"
#puts Prime.primeFactorization(75)
#puts "--"
#puts Prime.primeFactors(75)
#puts "--"
#puts "--"
#puts Prime.primeFactorization(125)
#puts "--"
#puts Prime.primeFactors(125)
#puts "--"
#puts "--"
#puts Prime.primeFactorization(46)
#puts "--"
#puts Prime.primeFactors(46)
#puts "--"
#puts "--"


finish = Time.now
puts "#{finish - start} seconds elapsed..."
