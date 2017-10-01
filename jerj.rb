module Jerj
  def self.sumOfSquares(n)
    sum = 0
    for i in 1..n
      sum+=i**2
    end
    return sum
  end

  def self.squareOfSum(n)
    return self.triangle(n)**2
  end

  def self.triangle(n)
    sum = 0
    for i in 1..n
      sum+=i
    end
    return sum
  end
end
