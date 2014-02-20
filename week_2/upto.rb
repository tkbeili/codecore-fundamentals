# ask user for two numbers and then display the numbers 
# from the lower number to the higher one
# Stretch: Display “Hello World” instead of the number 
# if it’s divisible by 7

print "Enter a number A: "
a = gets.chomp.to_i
print "Enter a number B: "
b = gets.chomp.to_i


if a > b
  b.upto(a) { |z|
    if z % 7 == 0
      puts "Hello worlds"
    else
      puts z
    end
  }
else
  a.upto(b) {|z| 
    if z % 7 == 0
      puts "Hello worlds"
    else
      puts z
    end
  }
end