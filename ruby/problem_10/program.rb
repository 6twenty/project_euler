require 'prime'

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

# N = 10
N = 2_000_000

@primes = []

# @prime = Prime.new

# def check_prime prime
#   next_prime = prime.next
#   if next_prime < N
#     @primes << next_prime
#     check_prime(prime)
#   end
# end

Prime.each do |prime|
  break if prime >= N
  @primes << prime
end

# check_prime(@prime)

@running_total = 0
@primes.each { |p| @running_total += p }

puts @running_total