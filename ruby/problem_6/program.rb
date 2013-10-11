# The sum of the squares of the first ten natural numbers is,
# 
# (1*1) + (2*2) + ... + (10*10) = 385
# 
# The square of the sum of the first ten natural numbers is,
# 
# (1 + 2 + ... + 10)*(1 + 2 + ... + 10) = (55*55) = 3025
# 
# Hence the difference between the sum of the squares of the first ten natural numbers and the 
# square of the sum is 3025 - 385 = 2640.
# 
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

NATURAL_NUMBERS = 100

def sum_of_the_squares
  sum = 0
  (NATURAL_NUMBERS+1).times do |n|
    sum += (n**2)
  end
  sum
end

def square_of_the_sums
  sum = 0
  (NATURAL_NUMBERS+1).times do |n|
    sum += n
  end
  (sum**2)
end

p square_of_the_sums - sum_of_the_squares