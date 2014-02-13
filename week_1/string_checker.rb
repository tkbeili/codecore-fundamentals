print "Give me a sentence: "
string = gets.chomp


if string.length > 20
  puts string.capitalize
elsif string.length > 10
  puts string.upcase
else
  puts string.downcase
end