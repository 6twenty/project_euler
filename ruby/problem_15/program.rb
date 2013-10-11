# Starting in the top left corner of a 2x2 grid, there are 6 routes (without backtracking) to the bottom right corner.
# 
# How many routes are there through a 20x20 grid?
# 
# THE MATRIX

@solutions = [[2], [3,6], [4,10,20]] # results of "1", "2" and "3"

# start at "4"
(4..20).to_a.each do |x|
  array = []
  index = (x-2)
  previous = @solutions[index]
  array << start = (x+1)
  
  (x-2).times do |a|
    array << (array.last + previous[a+1])
  end
  
  array << (array.last * 2)
  @solutions << array
end

puts @solutions.last