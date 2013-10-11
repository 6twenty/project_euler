# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# 
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

RANGE = 1..20
MAX = RANGE.last

# n should be Float
def is_whole?(n)
  (n.to_i == n)
end

def find_number
  n = 20
  n += 20 until is_number_valid?(n)
  n
end

# ie, can this number be divided cleanly by each of RANGE?
def is_number_valid?(n)
  puts n
  # RANGE.detect {|i| !is_whole?(n.to_f / i)}.nil?
  i = 1
  i += 1 until !is_whole?(n.to_f / i)
  i >= MAX
end

puts find_number