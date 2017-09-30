module Prime
  
  LIST = [2,3,5,7,11,13,17]

  # returns a boolean whether or not n is prime
  def self.isPrime(n)
    return false if n<2
    return true if n==2
    for k in LIST
      return true if n==k
      return false if n%k==0
    end
    for k in (3..Math.sqrt(n).round).step(2) #<= chk odd ints until sqrt(n)
      return false if n%k==0
    end
    return true #<= if no factors, it is prime
  end

  # returns all factors of n
  def self.factors(n)
    fac = []
    for k in 1..(Math.sqrt(n).round)
      fac.push(k) if n%k==0
    end
    for k in fac.dup
      next if k==1 or (n/k)==k
      fac.push(n/k) if n%(n/k)==0 
    end
    fac.push(n)
    return fac
  end

  # returns the prime factors of n
  def self.primeFactors(n)
    return [] if n<2
    return [n] if n==2
    fac = []
    fac.push(2) if n%2==0
    for k in (3..(Math.sqrt(n).round)).step(2)
      fac.push(k) if n%k==0 and Prime.isPrime(k)
    end
    temp = fac.dup
    for k in temp 
      fac.push(n/k) if Prime.isPrime(n/k)
    end
    fac.push(n) if fac.empty?
    return fac
  end
  
  # returns the unique prime factorization for n
  def self.primeFactorization(n)
    return [] if n<2
    return [n] if Prime.isPrime(n)
    fac = self.primeFactors(n)
    factorization = [fac.max]
    factorization.concat(self.primeFactorization(n/fac.max))
    return factorization
  end

  # returns the first n primes
  def self.getPrimes(n)
    k = LIST.last+2 #<= chk odd ints not in the list
    while LIST.count<n
      LIST.push(k) if Prime.isPrime(k)
      k += 2 #<= next odd int
    end
    return LIST
  end
  
  def self.getPrimesUpTo(n)

    k = LIST.last+2 #<= chk odd ints not in list for primeness
    while LIST.max<n
      LIST.push(k) if Prime.isPrime(k)
      k += 2 #<= next odd int
    end
    if LIST.max>n
      LIST.delete_if {|x| x>n}
    end
    return LIST

  end    
end

