# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# 
# a2 + b2 = c2
# 
# For example, (3x3) + (4x4) = 9 + 16 = 25 = (5x5).
# 
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def is_whole? n
  n.to_i == n
end

# Math.sqrt(n)

def generate_n_squares n
  squares = []
  n.times { |i| squares << i*i }
  squares
end

def generate_pythagoreans n
  squares = generate_n_squares(n)
  squares.each_with_index do |square,index|
    unless index == 0
      squares.each_with_index do |sq,i|
        if sq > square
          a = Math.sqrt(square)
          b = Math.sqrt(sq)
          c = Math.sqrt(square + sq)
          abc = a*b*c
          if (a + b + c) == 1000
            return "\n Equation: #{a} + #{b} + #{c} = #{a+b+c} \n Product of abc: #{a} x #{b} x #{c} = #{abc} \n Pythagorean triplet: #{(a*a)} + #{(b*b)} = #{(a*a) + (b*b)}"
          end
        end
      end
    end
  end
end

puts generate_pythagoreans 1000 # This just needs to be a high number