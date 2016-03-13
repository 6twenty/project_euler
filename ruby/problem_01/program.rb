# Title: Multiples of 3 and 5
# URL: http://projecteuler.net/problem=1
# Usage: execute `ruby problem_1/program.rb`.

class Program

  # Return the sum of all multiples of 3 or 5 below 1000.
  def run
    (1...1_000).select { |n| (n % 3 == 0) || (n % 5 == 0) }.inject(:+)
  end

end

puts Program.new.run
