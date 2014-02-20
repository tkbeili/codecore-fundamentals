# FizzBuzz: Write a code that adds 1 to 100  to an 
# array and if code is divisible by three then adds FIZZ 
# and if it's divisible by 5 adds BUZZ and it's divisible by 
# both put FIZZBUZZ
# Stretch: Make user enter words instead of “Fizz” and “Buzz”

results = []

for number in 1..100
  if number % 3 == 0 && number % 5 == 0
    results.push("FizzBuzz")
  elsif number % 3 == 0
    results.push("Fizz")
  elsif number % 5 == 0
    results.push("Buzz")
  else
    results.push(number)
  end
end

puts results


1.upto(100) do |number|
  if number % 3 == 0 && number % 5 == 0
    results.push("FizzBuzz")
  elsif number % 3 == 0
    results.push("Fizz")
  elsif number % 5 == 0
    results.push("Buzz")
  else
    results.push(number)
  end
end