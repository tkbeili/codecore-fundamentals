def full_name(first_name, last_name)
  first_name.capitalize!
  last_name.capitalize!
  return "#{first_name} #{last_name}"
end

name = full_name("Tam", "Kbeili")
# same as
name = full_name "Tam", "Kbeili"

puts name

def my_method(a, b)
  return a + b
end

puts my_method 4, 5
