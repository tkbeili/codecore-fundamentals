def multiply(a, *b)
  result = a
  b.each {|x| result = result * x }
  return result
end

puts multiply(4,5,6,4,7,7,7)
puts multiply(5, 6)
puts multiply(5)