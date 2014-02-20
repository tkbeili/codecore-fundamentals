# Given an array of words:
# [“hello”, “greetings”,”hola”,”hi”]

# Write a method that takes an array like the one above 
# and returns a hash whose keys are symbols from the array 
# and the value is the character count

my_array = ["hello", "greetings","hola","hi"]

def convertor(array)
  result = {}
  array.each {|x| result[x.to_sym] = x.length }
  result
end

puts convertor(my_array)