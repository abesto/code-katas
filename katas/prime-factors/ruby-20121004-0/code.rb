def prime_factors(n)
  factors = []
  current = 2
  until n < 2
    if n % current == 0
      n /= current
      factors << current
    else
      current += 1
    end
  end
  factors
end
