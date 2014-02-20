# Build a method that takes 1 argument then prints
# out the string capitalized only if it can be capitalized. 
# If not display “input can’t be capitalized”

def capitalize_it(my_string)
  if my_string.respond_to?(:capitalize)
    my_string.capitalize
  else
    "input can't be capitalized"
  end
end


puts capitalize_it("hello Aswin")
puts capitalize_it(100)
