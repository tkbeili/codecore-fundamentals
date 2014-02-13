for x in 1..100
  print_value = ""
  print_value += "FIZZ" if x % 3 == 0
  print_value += "BUZZ" if x % 5 == 0
  
  if print_value == ""
    puts x
  else
    puts print_value
  end
end


  if x % 15 == 0
    puts "FIZZBUZZ"
  elsif x % 3 == 0
    puts "FIZZ"
  elsif x % 5 == 0
    puts "BUZZ"
  else
    puts x
  end