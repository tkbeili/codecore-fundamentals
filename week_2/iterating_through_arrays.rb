my_array = [1,2,3,4,5]

my_array.each {|x| puts x }

# this is equivalent to

my_array.each do |x|
  puts x
end

# use the second if you have multiple lines such as:
my_array.each do |x|
  y = x + 5
  puts y
end