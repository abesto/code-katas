def prime_factors(n)
  factors = []
  factor = n
  while n > 1
    factor -= 1  while not is_prime(factor)
    if (n % factor).zero?
      factors << factor
      n /= factor
    else
      factor -= 1
    end
  end
  factors.sort
end

def is_prime(n)
  return false if n == 1
  return true if n == 2
  (2 .. n/2).each do |factor|
    return false  if (n % factor).zero?
  end
  return true
end
