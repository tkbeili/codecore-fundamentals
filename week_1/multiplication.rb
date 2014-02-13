print "Enter your number: "
number = gets.chomp.to_i

x = 1
until x > 10
  puts number * x
  x += 1
end
x = 1
while true
  break if x == 10
  puts "#{x} \n"
  x += 1
end