require_relative "prime"

amount = 600851475143 
start = Time.now
#puts Prime.isPrimeNoList(amount)
#puts Prime.primeFactorization(amount)
puts Prime.getPrimes(100000)
finish = Time.now
puts "#{finish - start} seconds elapsed..."
