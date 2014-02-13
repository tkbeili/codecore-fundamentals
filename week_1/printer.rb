print "Please give me a number "
user_number = gets.chomp.to_i

x = user_number

if user_number > 100
  puts "You entered too big of a number"
else
  until x > 100
    puts x
    x += 1
  end
end


print "Please give me a number "
user_number = gets.chomp.to_i

if user_number > 100
  puts "You entered too big of a number"
else
  for x in user_number..100
    puts x
  end
end