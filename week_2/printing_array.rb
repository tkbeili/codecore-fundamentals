# Build an array that contains five names then loop 
# through the array and print names capitalized
names = ["aswin", "max", "mikas"]

names.each {|name| puts name.capitalize }


# Stretch: In addition store the capitalized names 
# in another array

capitalized_names = []

names.each do |name|
  capitalized_names.push(name.capitalize)
  puts name.capitalize
end

puts "--- The Array: "
puts capitalized_names
