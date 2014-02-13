a = gets.chomp.to_i
if a > 10
  puts "your number is large"
elsif a > 5
  puts "your number is medium"
elsif a > 2
  puts "your number is small-medium"
else
  puts "your number is small"
end
