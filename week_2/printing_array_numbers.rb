# Build an array that contains five numbers then loop 
# through the array and print each number multiplied by itself

numbers = [1, 2, 4 ,5 , 7]

numbers.each {|number| puts number * number }

# or 

numbers.each {|number| puts number ** 2 }