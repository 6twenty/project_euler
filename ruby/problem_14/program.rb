# The following iterative sequence is defined for the set of positive integers:
# 
# n  n/2 (n is even)
# n  3n + 1 (n is odd)
# 
# Using the rule above and starting with 13, we generate the following sequence:
# 
# 13  40  20  10  5  16  8  4  2  1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms.
# Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# 
# Which starting number, under one million, produces the longest chain?
# 
# NOTE: Once the chain starts the terms are allowed to go above one million.

@counter = 13
@longest_so_far = [13, 10]

def next_in_chain_after n
  n.even? ? even_next(n) : odd_next(n)
end

def even_next n
  n / 2
end

def odd_next n
  (n*3) + 1
end

def start_chain_with n
  chain_loop([n])
end

def chain_loop array
  array << next_in_chain_after(array[-1])
  chain_loop(array) if array[-1] > 1
  @longest_so_far = [array[0], array.length] if array.length > @longest_so_far[1]
  array.length
end

def go!
  while @counter < 1_000_000
    start_chain_with(@counter)
    @counter += 1
  end
  @longest_so_far
end

puts go!.join(', ')