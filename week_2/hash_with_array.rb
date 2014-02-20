# Print all the keys in the hash above and all 
# the members of the value arrays. For example:
# BC: Vancouver, Richmond
students = {"BC" => ["Vancouver", "Richmond"], 
            "AB" => ["Edmonton", "Calgary"],
            "NS" => "Halifax" }

students.each do |x, y|
  puts "#{x}: #{y.join(', ')}"
end

# Strtech accept a String or Array

students.each do |x, y|
  if y.is_a? Array
    puts "#{x}: #{y.join(', ')}"
  else
    puts "#{x}: #{y}"
  end
end

students.each do |x, y|
  if y.class == Array
    puts "#{x}: #{y.join(', ')}"
  else
    puts "#{x}: #{y}"
  end
end


students.each do |x, y|
  if y.repond_to? :join
    puts "#{x}: #{y.join(', ')}"
  else
    puts "#{x}: #{y}"
  end
end
