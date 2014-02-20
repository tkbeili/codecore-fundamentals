# Write a method  takes variable number of numbers 
# and returns the sum of all these numbers

def sum_all(*b)
  b.each {|x| sum = sum + x}
  return sum
end

puts sum_all 1, 2 ,3 ,4, 5, 6
puts sum_all
puts sum_all 1, 2
