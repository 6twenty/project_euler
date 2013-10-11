# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.
# 
# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindromic?(n)
  n.to_s == n.to_s.reverse
end

MAX = 999

def generate_palindromics
  array = []
  ((1..MAX).to_a + (1..MAX).to_a).combination(2).each do |n1,n2|
    array << (n1 * n2) if is_palindromic?(n1 * n2)
  end
  array
end

puts generate_palindromics.sort[-1]