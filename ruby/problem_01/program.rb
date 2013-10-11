# Title: Multiples of 3 and 5
# URL: http://projecteuler.net/problem=1
# Usage: execute `ruby problem_1/program.rb`.

class Program
  
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
  
  # Run the program: return the sum of all multiples of 3 or 5 below 1000.
  def run
    (1...1_000).select { |n| is_multiple_of_3_or_5?(n) }.inject(:+)
  end

end

puts Program.new.run
