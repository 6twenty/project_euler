# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# 
# What is the 10001st prime number?

require 'mathn'

def counter
  prime = Prime.new
  cache = 0
  10001.times do |n|
    cache = prime.next
    puts cache
  end
  cache
end

p counter