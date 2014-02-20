# Write a method  called by_five? that takes a single 
# number parameter, and returns true if that number is 
# evenly divisible by five and false if not. Don’t use 
# return in this case.

def by_five?(number)
  if number % 5 == 0
    true
  else
    false
  end
end


def by_five?(number)
  if number % 5 == 0
end

puts by_five? 10
puts by_five? 7
