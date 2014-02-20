# Write code that prints every 
# element in the two-dimensional array above
my_array = [[1,2,3],[1,2,3],[1,2,3],[1,2,3]]

my_array.flatten.each {|x| puts x }

# Stretch: Do the same thing in a totally different way

my_array.each do |x|
  x.each {|x| puts x }
end