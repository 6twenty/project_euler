# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.
# 
# Find the sum of all the multiples of 3 or 5 below 1000.

# Usage: execute `ruby problem_1/program.rb`.

# Returns true if the number is a multiple of 3.
def is_multiple_of_3?(n)
  # Divide by 3.
  divided_by_3 = n / 3.0
  # Is the result is a whole number?
  divided_by_3 == divided_by_3.to_i
end

# Returns true if the number is a multiple of 5.
def is_multiple_of_5?(n)
  # Divide by 5.
  divided_by_5 = n / 5.0
  # Is the result is a whole number?
  divided_by_5 == divided_by_5.to_i
end

# Returns true if the number is a multiple of 3 or 5.
def is_multiple_of_3_or_5?(n)
  is_multiple_of_3?(n) || is_multiple_of_5?(n)
end

# Sum of all multiples of 3 or 5 below 1000
puts (1...1_000).select { |n| is_multiple_of_3_or_5?(n) }.inject(:+)