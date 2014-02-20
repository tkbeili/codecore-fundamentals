# Write a method that takes one argument and 
# then prints whether the passed argument is String, Integer or 
# Array otherwise it print “something else”
def check(a)
  if a.is_a? Array
    puts "It's an Array"
  elsif a.is_a? Integer
    puts "Nice number"
  elsif a.is_a? String
    puts "You have a word"
  else
    puts "Something else"
  end
end

puts check []
puts check 1
puts check "asdf"
puts check true

