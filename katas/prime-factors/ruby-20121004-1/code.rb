def prime_factors(n)
  factors = []
  factor = 2
  until n < 2
    if n % factor == 0
      n /= factor
      factors << factor
    else
      factor += 1
    end
  end
  factors
end

