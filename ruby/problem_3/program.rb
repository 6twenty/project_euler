require 'prime'

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143?

# N = 13195
N = 600851475143

@primes = []

def check_division divide_x, by_n
  result = (divide_x / by_n)
  if is_whole?(result)
    @primes << by_n
    is_prime?(result) ? (@primes << result) : check_division(result, 2.0)
  else
    check_division(divide_x, (by_n + 1))
  end
end

def is_whole? n
  n == n.abs.to_i
end

def is_prime? n
  Prime.prime?(n)
end

check_division(N, 2.0)

puts @primes.join(', ')